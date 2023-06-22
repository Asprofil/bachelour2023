<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

            <!-- Card: Payment Card -->
            <div class="card payment-card">
                <!-- Card Body -->
                <div class="card-body">
                    <!-- Payment Form -->
                    <form action="/transact/payment" method="POST">

<!-- Form Group -->
                    <div class="form-group mb-2">
                        <label for=""> Benefactor</label>
                        <input type="text" name="beneficiary" class="form-control" placeholder="Benefactor">
                    </div>
                    <!-- End Of Form Group -->

                    <!-- Form Group -->
                    <div class="form-group mb-2">
                        <label for=""> Benefactor account number</label>
                        <input type="text" name="account_number"class="form-control" placeholder="Benefactor account number">
                    </div>
                    <!-- End Of Form Group -->

                    <!-- Form Group -->
                    <div class="form-group">
                        <label for="">Choose Account</label>
                        <!-- Select Account Option -->
                        <select name="account_id" class="form-control" id="">
                            <option value="">-- Choose Account --</option>
                            <c:if test="${userAccounts != null}">
                                <c:forEach items="${userAccounts}" var="selectAccount">
                                    <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                                </c:forEach>
                            </c:if>
                        </select>
                        <!-- End Select Account Option -->
                    </div>
                    <!-- End Of Group -->

                    <!-- Form Group -->
                    <div class="form-group mb-2">
                        <label for=""> Reference</label>
                        <input type="text" name="reference" class="form-control" placeholder="Reference">
                    </div>
                    <!-- End Of Form Group -->

                    <!-- Form Group -->
                    <div class="form-group mb-2">
                        <label for=""> Payment Amount</label>
                        <input type="text" name="payment_amount"class="form-control" placeholder="Payment Amount">
                    </div>
                    <!-- End Of Form Group -->

                    <!-- Form Group -->
                    <div class="form-group mb-2">
                        <button id="" class="btn btn-md transact-btn">Transact</button>
                    </div>
                    <!-- End Of Form Group -->

                    </form>
                    <!-- End Of Payment Form -->
                </div>
                <!-- End Of Card Body -->

            </div>
            <!-- End Of Card: Payment Card -->