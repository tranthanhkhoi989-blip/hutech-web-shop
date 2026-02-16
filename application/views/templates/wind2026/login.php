<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<main class="mx-auto max-w-7xl px-4 py-8">
    <div class="mx-auto w-full max-w-md rounded-3xl bg-white p-6 shadow-sm ring-1 ring-slate-200">
        <h1 class="mb-1 text-2xl font-bold text-slate-900">Sign in</h1>
        <p class="mb-5 text-sm text-slate-600">Sign in with username or email.</p>

        <?php if ($this->session->flashdata('userError')) { ?>
            <div class="mb-4 rounded-xl border border-rose-200 bg-rose-50 p-3 text-sm text-rose-700">
                <?php
                $error = $this->session->flashdata('userError');
                if (is_array($error)) {
                    foreach ($error as $er) {
                        echo htmlspecialchars($er) . '<br>';
                    }
                } else {
                    echo htmlspecialchars($error);
                }
                ?>
            </div>
        <?php } ?>

        <form method="POST" action="">
            <label class="mb-1 block text-xs font-semibold uppercase tracking-wide text-slate-600">Username or email</label>
            <input type="text" name="identity" class="mb-3 w-full rounded-xl border border-slate-200 px-3 py-2 text-sm outline-none focus:ring-2 focus:ring-slate-900/10" required>

            <label class="mb-1 block text-xs font-semibold uppercase tracking-wide text-slate-600">Password</label>
            <input type="password" name="pass" class="mb-4 w-full rounded-xl border border-slate-200 px-3 py-2 text-sm outline-none focus:ring-2 focus:ring-slate-900/10" required>

            <button type="submit" name="login" class="inline-flex w-full items-center justify-center rounded-xl bg-slate-900 px-4 py-2 text-sm font-semibold text-white hover:bg-slate-800">
                Sign in
            </button>
        </form>

        <?php if (!empty($social_google_enabled) || !empty($social_facebook_enabled)) { ?>
            <div class="my-4 flex items-center gap-3 text-xs text-slate-500">
                <span class="h-px flex-1 bg-slate-200"></span>
                <span>or</span>
                <span class="h-px flex-1 bg-slate-200"></span>
            </div>

            <div class="grid gap-2">
                <?php if (!empty($social_google_enabled)) { ?>
                    <a href="<?= LANG_URL . '/auth/google' ?>" class="inline-flex items-center justify-center rounded-xl border border-slate-200 bg-white px-4 py-2 text-sm font-semibold text-slate-800 hover:bg-slate-50">
                        Continue with Google
                    </a>
                <?php } ?>
                <?php if (!empty($social_facebook_enabled)) { ?>
                    <a href="<?= LANG_URL . '/auth/facebook' ?>" class="inline-flex items-center justify-center rounded-xl border border-slate-200 bg-white px-4 py-2 text-sm font-semibold text-slate-800 hover:bg-slate-50">
                        Continue with Facebook
                    </a>
                <?php } ?>
            </div>
        <?php } ?>

        <p class="mt-5 text-sm text-slate-600">
            No account?
            <a class="font-semibold text-slate-900 hover:underline" href="<?= LANG_URL . '/register' ?>">Sign up</a>
        </p>
    </div>
</main>
