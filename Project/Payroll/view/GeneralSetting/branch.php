<?php
include '../../root/Header.php';
?>
</head>

<body>
    <div class="container mt-5">
        <form action="../../model/GeneralSetting/Branch/actionCreate.php" method="post">
            <div class="row">
                <div class="col-xl-12 mb-3">
                    <input type="submit" name="btnsave" class="btn btn-secondary" value="Save">
                </div>
                <div class="col-xl-4">
                    <label for="">Brach Code</label>
                    <input type="text" name="branchcode" class="form-control">
                </div>
                <div class="col-xl-4">
                    <label for="">Brach Name</label>
                    <input type="text" name="branchName" class="form-control">
                </div>
                <div class="col-xl-4">
                    <label for="">Brach NameKH</label>
                    <input type="text" name="branchNameKH" class="form-control">
                </div>
                <div class="col-xl-4">
                    <label for="">Status</label>
                    <select name="status" class="form-control">
                        <option value="Active">Active</option>
                        <option value="InActive">InActive</option>
                    </select>
                </div>
            </div>
        </form>
    </div>


   <!-- table -->
</body>

</html>