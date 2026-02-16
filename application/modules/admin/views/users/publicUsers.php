<h1><i class="fa fa-users" aria-hidden="true"></i> Public Users</h1>
<hr>

<form method="GET" action="" class="form-inline" style="margin-bottom: 15px;">
    <div class="form-group">
        <input type="text" class="form-control" name="search" value="<?= htmlspecialchars($search) ?>" placeholder="Search by username/email/phone/address/city/post/payment">
    </div>
    <button type="submit" class="btn btn-primary">Search</button>
    <?php if ($search != '') { ?>
        <a href="<?= base_url('admin/publicusers') ?>" class="btn btn-default">Clear</a>
    <?php } ?>
</form>

<?php if (!empty($users)) { ?>
    <div class="table-responsive">
        <table class="table table-striped table-bordered table-condensed">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Address</th>
                    <th>City</th>
                    <th>Post/Zip</th>
                    <th>Preferred payment</th>
                    <th>Created</th>
                    <th>Orders</th>
                    <th class="text-center">Action</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($users as $user) { ?>
                    <tr>
                        <td>#<?= (int) $user['id'] ?></td>
                        <td><?= htmlspecialchars($user['name']) ?></td>
                        <td><a href="mailto:<?= htmlspecialchars($user['email']) ?>"><?= htmlspecialchars($user['email']) ?></a></td>
                        <td><?= htmlspecialchars($user['phone']) ?></td>
                        <td><?= isset($user['address']) ? htmlspecialchars($user['address']) : '' ?></td>
                        <td><?= isset($user['city']) ? htmlspecialchars($user['city']) : '' ?></td>
                        <td><?= isset($user['post_code']) ? htmlspecialchars($user['post_code']) : '' ?></td>
                        <td><?= isset($user['preferred_payment_type']) ? htmlspecialchars($user['preferred_payment_type']) : '' ?></td>
                        <td><?= htmlspecialchars($user['created']) ?></td>
                        <td><span class="label label-info"><?= (int) $user['orders_count'] ?></span></td>
                        <td class="text-center">
                            <a
                                href="<?= base_url('admin/publicusers/delete/' . (int) $user['id']) ?>"
                                class="btn btn-danger btn-xs"
                                onclick="return confirm('Delete this user account?')"
                            >
                                Delete
                            </a>
                        </td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
    <?= $links_pagination ?>
<?php } else { ?>
    <div class="alert alert-info">No public users found.</div>
<?php } ?>
