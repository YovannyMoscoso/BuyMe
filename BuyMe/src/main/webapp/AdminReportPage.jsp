<!-- Generate Sales Report Form View -->
<title="Generate Report">
    <h2>Generate a Sales Report</h2>
    <form method="post" action="reportScreen.jsp">
        <ul>
            <li>
                <input type="radio" name="fTotal">
                <label for="fTotal">Total Earnings</label>
            </li>
            <li>
                <input type="radio" name="fBestSelling">
                <label for="fBestSelling">Best Selling Items</label>
            </li>
            <li>
                <input type="radio" name="fBestBuyers">
                <label for="fBestBuyers">Best Buyers</label>
            </li>
            <li>
                <input type="radio" name="fEarningsAll" id="tall">
                <label for="fEarningsAll">Earnings Per:</label>
                <ul>
                    <li>
                      <input type="radio" name="fPerItem">
                      <label for="fPerItem">Item</label>
                    </li>
                    <li>
                      <input type="radio" name="fPerType">
                      <label for="fPerType">Item Type</label>
                    </li>
                    <li>
                      <input type="radio" name="fPerUser">
                      <label for="fPerUser">End user</label>
                    </li>
                </ul>
            </li>
        </ul>

        <button type="submit">Generate Report</button>
    </form>