app.js

async function submitQuery() {
    // Retrieval of values
    const player = document.getElementById("player").value;
    const stat = document.getElementById("stat").value;
    const operator = document.getElementById("operator").value;
    const value = document.getElementById("value").value;

    try {
    // Request to SQLserver to get the prediction
        const response = await fetch('/predict', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ player, stat, operator, value })
        });

        const result = await response.json();
        const resultContainer = document.getElementById("result");
        resultContainer.innerHTML = "";

        if (response.ok) {
            Object.entries(result).forEach(([key, value]) => {
                const resultBox = document.createElement("div");
                resultBox.className = "result-box";

                const title = document.createElement("h3");
                title.textContent = key.toUpperCase();

                const content = document.createElement("p");
                content.textContent = value;

                // Styling for likelihood
                if (key.toLowerCase() === "prediction" && typeof value === "string") {
                    const match = value.match(/(\d+)%/); // Extract percentage
                    if (match) {
                        const likelihood = parseInt(match[1]);
                        if (likelihood > 55) {
                            resultBox.classList.add("highlight-green");
                        } else if (likelihood >= 45 && likelihood <= 54) {
                            resultBox.classList.add("highlight-yellow");
                        } else {
                            resultBox.classList.add("highlight-red");
                        }
                    }
                }

                resultBox.appendChild(title);
                resultBox.appendChild(content);
                resultContainer.appendChild(resultBox);
            });
        } else {
            const errorBox = document.createElement("div");
            errorBox.className = "result-box highlight-red";
            errorBox.innerHTML = `<h3>Error</h3><p>${result.error || "Unknown error"}</p>`;
            resultContainer.appendChild(errorBox);
        }
    // Error Checking
    } catch (error) {
        console.error("Error:", error);

        const errorBox = document.createElement("div");
        errorBox.className = "result-box highlight-red";
        errorBox.innerHTML = `<h3>Error</h3><p>An error occurred. Please try again.</p>`;
        document.getElementById("result").appendChild(errorBox);
    }
}
