<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<main class="mx-auto max-w-7xl px-4 py-8">
    <div class="grid gap-6 lg:grid-cols-12">
        <section class="lg:col-span-4">
            <div class="rounded-3xl bg-white p-6 shadow-sm ring-1 ring-slate-200">
                <h2 class="mb-4 text-xl font-bold text-slate-900">My account</h2>
                <form method="POST" action="">
                    <label class="mb-1 block text-xs font-semibold uppercase tracking-wide text-slate-600">Full name</label>
                    <input type="text" name="name" value="<?= htmlspecialchars($userInfo['name']) ?>" class="mb-3 w-full rounded-xl border border-slate-200 px-3 py-2 text-sm outline-none focus:ring-2 focus:ring-slate-900/10">

                    <label class="mb-1 block text-xs font-semibold uppercase tracking-wide text-slate-600">Phone</label>
                    <input type="text" name="phone" value="<?= htmlspecialchars($userInfo['phone']) ?>" class="mb-3 w-full rounded-xl border border-slate-200 px-3 py-2 text-sm outline-none focus:ring-2 focus:ring-slate-900/10">

                    <label class="mb-1 block text-xs font-semibold uppercase tracking-wide text-slate-600">Address</label>
                    <textarea name="address" rows="2" class="mb-3 w-full rounded-xl border border-slate-200 px-3 py-2 text-sm outline-none focus:ring-2 focus:ring-slate-900/10"><?= isset($userInfo['address']) ? htmlspecialchars($userInfo['address']) : '' ?></textarea>

                    <label class="mb-1 block text-xs font-semibold uppercase tracking-wide text-slate-600">City</label>
                    <input type="text" name="city" value="<?= isset($userInfo['city']) ? htmlspecialchars($userInfo['city']) : '' ?>" class="mb-3 w-full rounded-xl border border-slate-200 px-3 py-2 text-sm outline-none focus:ring-2 focus:ring-slate-900/10">

                    <label class="mb-1 block text-xs font-semibold uppercase tracking-wide text-slate-600">Post/Zip code</label>
                    <input type="text" name="post_code" value="<?= isset($userInfo['post_code']) ? htmlspecialchars($userInfo['post_code']) : '' ?>" class="mb-3 w-full rounded-xl border border-slate-200 px-3 py-2 text-sm outline-none focus:ring-2 focus:ring-slate-900/10">

                    <label class="mb-1 block text-xs font-semibold uppercase tracking-wide text-slate-600">Preferred payment method</label>
                    <select name="preferred_payment_type" class="mb-3 w-full rounded-xl border border-slate-200 bg-white px-3 py-2 text-sm outline-none focus:ring-2 focus:ring-slate-900/10">
                        <?php $preferredPaymentType = isset($userInfo['preferred_payment_type']) ? $userInfo['preferred_payment_type'] : 'cashOnDelivery'; ?>
                        <option value="cashOnDelivery" <?= $preferredPaymentType === 'cashOnDelivery' ? 'selected' : '' ?>>Cash on Delivery</option>
                        <option value="VisaCard" <?= $preferredPaymentType === 'VisaCard' ? 'selected' : '' ?>>Visa Card</option>
                        <option value="PayPal" <?= $preferredPaymentType === 'PayPal' ? 'selected' : '' ?>>PayPal</option>
                        <option value="Bank" <?= $preferredPaymentType === 'Bank' ? 'selected' : '' ?>>Bank Payment</option>
                    </select>

                    <label class="mb-1 block text-xs font-semibold uppercase tracking-wide text-slate-600">Email</label>
                    <input type="email" name="email" value="<?= htmlspecialchars($userInfo['email']) ?>" class="mb-3 w-full rounded-xl border border-slate-200 px-3 py-2 text-sm outline-none focus:ring-2 focus:ring-slate-900/10">

                    <label class="mb-1 block text-xs font-semibold uppercase tracking-wide text-slate-600">New password (optional)</label>
                    <input type="password" name="pass" class="mb-4 w-full rounded-xl border border-slate-200 px-3 py-2 text-sm outline-none focus:ring-2 focus:ring-slate-900/10">

                    <button type="submit" name="update" class="mb-2 inline-flex w-full items-center justify-center rounded-xl bg-slate-900 px-4 py-2 text-sm font-semibold text-white hover:bg-slate-800">
                        Update profile
                    </button>
                    <a href="<?= LANG_URL . '/logout' ?>" class="inline-flex w-full items-center justify-center rounded-xl border border-slate-200 px-4 py-2 text-sm font-semibold text-slate-800 hover:bg-slate-50">
                        Logout
                    </a>
                </form>
            </div>
        </section>

        <section class="lg:col-span-8">
            <div class="rounded-3xl bg-white p-6 shadow-sm ring-1 ring-slate-200">
                <h2 class="mb-4 text-xl font-bold text-slate-900">Order history</h2>
                <div class="overflow-x-auto">
                    <table class="min-w-full divide-y divide-slate-200 text-sm">
                        <thead class="bg-slate-50">
                            <tr>
                                <th class="px-3 py-2 text-left font-semibold text-slate-700">Order ID</th>
                                <th class="px-3 py-2 text-left font-semibold text-slate-700">Date</th>
                                <th class="px-3 py-2 text-left font-semibold text-slate-700">Address</th>
                                <th class="px-3 py-2 text-left font-semibold text-slate-700">Phone</th>
                                <th class="px-3 py-2 text-left font-semibold text-slate-700">Products</th>
                            </tr>
                        </thead>
                        <tbody class="divide-y divide-slate-100">
                            <?php if (!empty($orders_history)) { ?>
                                <?php foreach ($orders_history as $order) { ?>
                                    <tr>
                                        <td class="px-3 py-3">#<?= htmlspecialchars($order['order_id']) ?></td>
                                        <td class="px-3 py-3"><?= date('d.m.Y', $order['date']) ?></td>
                                        <td class="px-3 py-3"><?= htmlspecialchars($order['address']) ?></td>
                                        <td class="px-3 py-3"><?= htmlspecialchars($order['phone']) ?></td>
                                        <td class="px-3 py-3">
                                            <?php
                                            $arr_products = @unserialize($order['products']);
                                            if (is_array($arr_products)) {
                                                foreach ($arr_products as $product) {
                                                    if (!isset($product['product_info'])) {
                                                        continue;
                                                    }
                                                    ?>
                                                    <div class="mb-3 rounded-xl border border-slate-200 p-2">
                                                        <div class="mb-2">
                                                            <img
                                                                src="<?= base_url('attachments/shop_images/' . $product['product_info']['image']) ?>"
                                                                alt="Product"
                                                                class="h-16 w-16 rounded-lg object-cover"
                                                            >
                                                        </div>
                                                        <a target="_blank" class="font-semibold text-slate-900 hover:underline" href="<?= base_url($product['product_info']['url']) ?>">
                                                            <?= isset($product['product_info']['title']) ? htmlspecialchars($product['product_info']['title']) : htmlspecialchars($product['product_info']['url']) ?>
                                                        </a>
                                                        <div class="text-slate-600">Qty: <?= (int) $product['product_quantity'] ?></div>
                                                    </div>
                                                <?php
                                                }
                                            }
                                            ?>
                                        </td>
                                    </tr>
                                <?php } ?>
                            <?php } else { ?>
                                <tr>
                                    <td colspan="5" class="px-3 py-6 text-center text-slate-500">No orders yet.</td>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
                <div class="mt-4">
                    <?= $links_pagination ?>
                </div>
            </div>
        </section>
    </div>
</main>
