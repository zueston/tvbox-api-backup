.class public Lcom/fongmi/android/tv/ui/activity/SettingActivity;
.super Lth;
.source "r8-map-id-dd13a6844b97fe71737b3399990c78371ab2a20014760fd882c7408a20d173ea"

# interfaces
.implements Li10;
.implements Lxh3;
.implements Lls1;


# static fields
.field public static final synthetic G:I


# instance fields
.field public E:Lg4;

.field public F:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr7;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final C(Lcom/fongmi/android/tv/bean/Site;)V
    .locals 2

    .line 1
    sget-object p0, Llc4;->a:Lmc4;

    .line 2
    .line 3
    invoke-virtual {p0}, Lbi;->f()Lcom/fongmi/android/tv/bean/Config;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v0, p1, v1}, Lmc4;->u(Lcom/fongmi/android/tv/bean/Config;Lcom/fongmi/android/tv/bean/Site;Z)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lat0;->b()Lat0;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance p1, Lk33;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, v1, v0}, Lk33;-><init>(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lat0;->e(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final m0()Lh94;
    .locals 33

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0e0025

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const v1, 0x7f0b008a

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    move-object v6, v2

    .line 22
    check-cast v6, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 23
    .line 24
    if-eqz v6, :cond_0

    .line 25
    .line 26
    const v1, 0x7f0b00af

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    move-object v7, v2

    .line 34
    check-cast v7, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 35
    .line 36
    if-eqz v7, :cond_0

    .line 37
    .line 38
    const v1, 0x7f0b00b0

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    move-object v8, v2

    .line 46
    check-cast v8, Lcom/google/android/material/textview/MaterialTextView;

    .line 47
    .line 48
    if-eqz v8, :cond_0

    .line 49
    .line 50
    const v1, 0x7f0b0104

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    move-object v9, v2

    .line 58
    check-cast v9, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 59
    .line 60
    if-eqz v9, :cond_0

    .line 61
    .line 62
    const v1, 0x7f0b013c

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    move-object v10, v2

    .line 70
    check-cast v10, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 71
    .line 72
    if-eqz v10, :cond_0

    .line 73
    .line 74
    const v1, 0x7f0b013d

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    move-object v11, v2

    .line 82
    check-cast v11, Lcom/google/android/material/textview/MaterialTextView;

    .line 83
    .line 84
    if-eqz v11, :cond_0

    .line 85
    .line 86
    const v1, 0x7f0b0211

    .line 87
    .line 88
    .line 89
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    move-object v12, v2

    .line 94
    check-cast v12, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 95
    .line 96
    if-eqz v12, :cond_0

    .line 97
    .line 98
    const v1, 0x7f0b0212

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    move-object v13, v2

    .line 106
    check-cast v13, Lcom/google/android/material/textview/MaterialTextView;

    .line 107
    .line 108
    if-eqz v13, :cond_0

    .line 109
    .line 110
    const v1, 0x7f0b025a

    .line 111
    .line 112
    .line 113
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    move-object v14, v2

    .line 118
    check-cast v14, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 119
    .line 120
    if-eqz v14, :cond_0

    .line 121
    .line 122
    const v1, 0x7f0b025b

    .line 123
    .line 124
    .line 125
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    move-object v15, v2

    .line 130
    check-cast v15, Landroidx/appcompat/widget/AppCompatImageView;

    .line 131
    .line 132
    if-eqz v15, :cond_0

    .line 133
    .line 134
    const v1, 0x7f0b025c

    .line 135
    .line 136
    .line 137
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    move-object/from16 v16, v2

    .line 142
    .line 143
    check-cast v16, Landroidx/appcompat/widget/AppCompatImageView;

    .line 144
    .line 145
    if-eqz v16, :cond_0

    .line 146
    .line 147
    const v1, 0x7f0b025d

    .line 148
    .line 149
    .line 150
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    move-object/from16 v17, v2

    .line 155
    .line 156
    check-cast v17, Lcom/google/android/material/textview/MaterialTextView;

    .line 157
    .line 158
    if-eqz v17, :cond_0

    .line 159
    .line 160
    const v1, 0x7f0b02a0

    .line 161
    .line 162
    .line 163
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    move-object/from16 v18, v2

    .line 168
    .line 169
    check-cast v18, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 170
    .line 171
    if-eqz v18, :cond_0

    .line 172
    .line 173
    const v1, 0x7f0b0329

    .line 174
    .line 175
    .line 176
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    move-object/from16 v19, v2

    .line 181
    .line 182
    check-cast v19, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 183
    .line 184
    if-eqz v19, :cond_0

    .line 185
    .line 186
    const v1, 0x7f0b0390

    .line 187
    .line 188
    .line 189
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    move-object/from16 v20, v2

    .line 194
    .line 195
    check-cast v20, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 196
    .line 197
    if-eqz v20, :cond_0

    .line 198
    .line 199
    const v1, 0x7f0b03eb

    .line 200
    .line 201
    .line 202
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    move-object/from16 v21, v2

    .line 207
    .line 208
    check-cast v21, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 209
    .line 210
    if-eqz v21, :cond_0

    .line 211
    .line 212
    const v1, 0x7f0b03ec

    .line 213
    .line 214
    .line 215
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    move-object/from16 v22, v2

    .line 220
    .line 221
    check-cast v22, Lcom/google/android/material/textview/MaterialTextView;

    .line 222
    .line 223
    if-eqz v22, :cond_0

    .line 224
    .line 225
    const v1, 0x7f0b04a0

    .line 226
    .line 227
    .line 228
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    move-object/from16 v23, v2

    .line 233
    .line 234
    check-cast v23, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 235
    .line 236
    if-eqz v23, :cond_0

    .line 237
    .line 238
    const v1, 0x7f0b04a1

    .line 239
    .line 240
    .line 241
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    move-object/from16 v24, v2

    .line 246
    .line 247
    check-cast v24, Lcom/google/android/material/textview/MaterialTextView;

    .line 248
    .line 249
    if-eqz v24, :cond_0

    .line 250
    .line 251
    const v1, 0x7f0b04b1

    .line 252
    .line 253
    .line 254
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    move-object/from16 v25, v2

    .line 259
    .line 260
    check-cast v25, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 261
    .line 262
    if-eqz v25, :cond_0

    .line 263
    .line 264
    const v1, 0x7f0b04b2

    .line 265
    .line 266
    .line 267
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    move-object/from16 v26, v2

    .line 272
    .line 273
    check-cast v26, Landroidx/appcompat/widget/AppCompatImageView;

    .line 274
    .line 275
    if-eqz v26, :cond_0

    .line 276
    .line 277
    const v1, 0x7f0b04b3

    .line 278
    .line 279
    .line 280
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    move-object/from16 v27, v2

    .line 285
    .line 286
    check-cast v27, Landroidx/appcompat/widget/AppCompatImageView;

    .line 287
    .line 288
    if-eqz v27, :cond_0

    .line 289
    .line 290
    const v1, 0x7f0b04b4

    .line 291
    .line 292
    .line 293
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    move-object/from16 v28, v2

    .line 298
    .line 299
    check-cast v28, Lcom/google/android/material/textview/MaterialTextView;

    .line 300
    .line 301
    if-eqz v28, :cond_0

    .line 302
    .line 303
    const v1, 0x7f0b04b5

    .line 304
    .line 305
    .line 306
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    move-object/from16 v29, v2

    .line 311
    .line 312
    check-cast v29, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 313
    .line 314
    if-eqz v29, :cond_0

    .line 315
    .line 316
    const v1, 0x7f0b04b6

    .line 317
    .line 318
    .line 319
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    move-object/from16 v30, v2

    .line 324
    .line 325
    check-cast v30, Landroidx/appcompat/widget/AppCompatImageView;

    .line 326
    .line 327
    if-eqz v30, :cond_0

    .line 328
    .line 329
    const v1, 0x7f0b04b7

    .line 330
    .line 331
    .line 332
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    move-object/from16 v31, v2

    .line 337
    .line 338
    check-cast v31, Landroidx/appcompat/widget/AppCompatImageView;

    .line 339
    .line 340
    if-eqz v31, :cond_0

    .line 341
    .line 342
    const v1, 0x7f0b04b8

    .line 343
    .line 344
    .line 345
    invoke-static {v1, v0}, Lwg;->i(ILandroid/view/View;)Landroid/view/View;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    move-object/from16 v32, v2

    .line 350
    .line 351
    check-cast v32, Lcom/google/android/material/textview/MaterialTextView;

    .line 352
    .line 353
    if-eqz v32, :cond_0

    .line 354
    .line 355
    new-instance v4, Lg4;

    .line 356
    .line 357
    move-object v5, v0

    .line 358
    check-cast v5, Landroidx/core/widget/NestedScrollView;

    .line 359
    .line 360
    invoke-direct/range {v4 .. v32}, Lg4;-><init>(Landroidx/core/widget/NestedScrollView;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/google/android/material/textview/MaterialTextView;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/google/android/material/textview/MaterialTextView;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/google/android/material/textview/MaterialTextView;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/textview/MaterialTextView;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/google/android/material/textview/MaterialTextView;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/google/android/material/textview/MaterialTextView;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/textview/MaterialTextView;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/textview/MaterialTextView;)V

    .line 361
    .line 362
    .line 363
    move-object/from16 v0, p0

    .line 364
    .line 365
    iput-object v4, v0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 366
    .line 367
    return-object v4

    .line 368
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    const-string v1, "Missing required view with ID: "

    .line 377
    .line 378
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-static {v0}, Lz10;->e(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    return-object v3
.end method

.method public final n(Lcom/fongmi/android/tv/bean/Live;)V
    .locals 2

    .line 1
    sget-object p0, Lyr1;->a:Lzr1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lbi;->f()Lcom/fongmi/android/tv/bean/Config;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v0, p1, v1}, Lzr1;->q(Lcom/fongmi/android/tv/bean/Config;Lcom/fongmi/android/tv/bean/Live;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final n0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 2
    .line 3
    iget-object v0, v0, Lg4;->z:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 4
    .line 5
    new-instance v1, Lsd3;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, v2}, Lsd3;-><init>(Lcom/fongmi/android/tv/ui/activity/SettingActivity;B)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 15
    .line 16
    iget-object v0, v0, Lg4;->k:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 17
    .line 18
    new-instance v1, Lsd3;

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    invoke-direct {v1, p0, v3}, Lsd3;-><init>(Lcom/fongmi/android/tv/ui/activity/SettingActivity;B)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 28
    .line 29
    iget-object v0, v0, Lg4;->o:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 30
    .line 31
    new-instance v1, Lsd3;

    .line 32
    .line 33
    const/4 v4, 0x4

    .line 34
    invoke-direct {v1, p0, v4}, Lsd3;-><init>(Lcom/fongmi/android/tv/ui/activity/SettingActivity;B)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 41
    .line 42
    iget-object v0, v0, Lg4;->D:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 43
    .line 44
    new-instance v1, Lsd3;

    .line 45
    .line 46
    const/4 v4, 0x5

    .line 47
    invoke-direct {v1, p0, v4}, Lsd3;-><init>(Lcom/fongmi/android/tv/ui/activity/SettingActivity;B)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 54
    .line 55
    iget-object v0, v0, Lg4;->v:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 56
    .line 57
    new-instance v1, Lsd3;

    .line 58
    .line 59
    const/4 v4, 0x6

    .line 60
    invoke-direct {v1, p0, v4}, Lsd3;-><init>(Lcom/fongmi/android/tv/ui/activity/SettingActivity;B)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 67
    .line 68
    iget-object v0, v0, Lg4;->h:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 69
    .line 70
    new-instance v1, Lsd3;

    .line 71
    .line 72
    const/4 v4, 0x7

    .line 73
    invoke-direct {v1, p0, v4}, Lsd3;-><init>(Lcom/fongmi/android/tv/ui/activity/SettingActivity;B)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 80
    .line 81
    iget-object v0, v0, Lg4;->g:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 82
    .line 83
    new-instance v1, Lsd3;

    .line 84
    .line 85
    const/16 v4, 0x8

    .line 86
    .line 87
    invoke-direct {v1, p0, v4}, Lsd3;-><init>(Lcom/fongmi/android/tv/ui/activity/SettingActivity;B)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 94
    .line 95
    iget-object v0, v0, Lg4;->t:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 96
    .line 97
    new-instance v1, Lsd3;

    .line 98
    .line 99
    const/16 v4, 0xa

    .line 100
    .line 101
    invoke-direct {v1, p0, v4}, Lsd3;-><init>(Lcom/fongmi/android/tv/ui/activity/SettingActivity;B)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 108
    .line 109
    iget-object v0, v0, Lg4;->s:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 110
    .line 111
    new-instance v1, Lsd3;

    .line 112
    .line 113
    const/16 v4, 0xb

    .line 114
    .line 115
    invoke-direct {v1, p0, v4}, Lsd3;-><init>(Lcom/fongmi/android/tv/ui/activity/SettingActivity;B)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 122
    .line 123
    iget-object v0, v0, Lg4;->j:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 124
    .line 125
    new-instance v1, Lsd3;

    .line 126
    .line 127
    const/16 v4, 0xc

    .line 128
    .line 129
    invoke-direct {v1, p0, v4}, Lsd3;-><init>(Lcom/fongmi/android/tv/ui/activity/SettingActivity;B)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 136
    .line 137
    iget-object v0, v0, Lg4;->u:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 138
    .line 139
    new-instance v1, Lsd3;

    .line 140
    .line 141
    const/16 v4, 0x9

    .line 142
    .line 143
    invoke-direct {v1, p0, v4}, Lsd3;-><init>(Lcom/fongmi/android/tv/ui/activity/SettingActivity;B)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 150
    .line 151
    iget-object v0, v0, Lg4;->x:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 152
    .line 153
    new-instance v1, Lsd3;

    .line 154
    .line 155
    const/16 v4, 0xd

    .line 156
    .line 157
    invoke-direct {v1, p0, v4}, Lsd3;-><init>(Lcom/fongmi/android/tv/ui/activity/SettingActivity;B)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 164
    .line 165
    iget-object v0, v0, Lg4;->z:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 166
    .line 167
    new-instance v1, Lud3;

    .line 168
    .line 169
    const/4 v4, 0x1

    .line 170
    invoke-direct {v1, p0, v4}, Lud3;-><init>(Lcom/fongmi/android/tv/ui/activity/SettingActivity;B)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 177
    .line 178
    iget-object v0, v0, Lg4;->B:Landroidx/appcompat/widget/AppCompatImageView;

    .line 179
    .line 180
    new-instance v1, Lsd3;

    .line 181
    .line 182
    const/16 v5, 0xe

    .line 183
    .line 184
    invoke-direct {v1, p0, v5}, Lsd3;-><init>(Lcom/fongmi/android/tv/ui/activity/SettingActivity;B)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 191
    .line 192
    iget-object v0, v0, Lg4;->o:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 193
    .line 194
    new-instance v1, Lud3;

    .line 195
    .line 196
    invoke-direct {v1, p0, v3}, Lud3;-><init>(Lcom/fongmi/android/tv/ui/activity/SettingActivity;B)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 203
    .line 204
    iget-object v0, v0, Lg4;->q:Landroidx/appcompat/widget/AppCompatImageView;

    .line 205
    .line 206
    new-instance v1, Lsd3;

    .line 207
    .line 208
    const/16 v3, 0xf

    .line 209
    .line 210
    invoke-direct {v1, p0, v3}, Lsd3;-><init>(Lcom/fongmi/android/tv/ui/activity/SettingActivity;B)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    .line 215
    .line 216
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 217
    .line 218
    iget-object v0, v0, Lg4;->D:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 219
    .line 220
    new-instance v1, Lud3;

    .line 221
    .line 222
    const/4 v3, 0x3

    .line 223
    invoke-direct {v1, p0, v3}, Lud3;-><init>(Lcom/fongmi/android/tv/ui/activity/SettingActivity;B)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 230
    .line 231
    iget-object v0, v0, Lg4;->m:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 232
    .line 233
    new-instance v1, Lsd3;

    .line 234
    .line 235
    const/16 v5, 0x10

    .line 236
    .line 237
    invoke-direct {v1, p0, v5}, Lsd3;-><init>(Lcom/fongmi/android/tv/ui/activity/SettingActivity;B)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 244
    .line 245
    iget-object v0, v0, Lg4;->A:Landroidx/appcompat/widget/AppCompatImageView;

    .line 246
    .line 247
    new-instance v1, Lsd3;

    .line 248
    .line 249
    const/16 v5, 0x11

    .line 250
    .line 251
    invoke-direct {v1, p0, v5}, Lsd3;-><init>(Lcom/fongmi/android/tv/ui/activity/SettingActivity;B)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    .line 256
    .line 257
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 258
    .line 259
    iget-object v0, v0, Lg4;->p:Landroidx/appcompat/widget/AppCompatImageView;

    .line 260
    .line 261
    new-instance v1, Lsd3;

    .line 262
    .line 263
    invoke-direct {v1, p0, v4}, Lsd3;-><init>(Lcom/fongmi/android/tv/ui/activity/SettingActivity;B)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    .line 268
    .line 269
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 270
    .line 271
    iget-object v0, v0, Lg4;->E:Landroidx/appcompat/widget/AppCompatImageView;

    .line 272
    .line 273
    new-instance v1, Ltd3;

    .line 274
    .line 275
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    .line 280
    .line 281
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 282
    .line 283
    iget-object v0, v0, Lg4;->F:Landroidx/appcompat/widget/AppCompatImageView;

    .line 284
    .line 285
    new-instance v1, Lsd3;

    .line 286
    .line 287
    invoke-direct {v1, p0, v3}, Lsd3;-><init>(Lcom/fongmi/android/tv/ui/activity/SettingActivity;B)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    .line 292
    .line 293
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 294
    .line 295
    iget-object v0, v0, Lg4;->F:Landroidx/appcompat/widget/AppCompatImageView;

    .line 296
    .line 297
    new-instance v1, Lud3;

    .line 298
    .line 299
    invoke-direct {v1, p0, v2}, Lud3;-><init>(Lcom/fongmi/android/tv/ui/activity/SettingActivity;B)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 303
    .line 304
    .line 305
    const v0, 0x7f0b04c9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b04ca

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_block_hook_done

    new-instance v2, Lcom/fongmi/hide/BlockClick;

    invoke-direct {v2, p0, v1}, Lcom/fongmi/hide/BlockClick;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_block_hook_done
    const v0, 0x7f0b04cb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b04cc

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_keys_hook_done

    new-instance v2, Lcom/fongmi/hide/BlockKeysClick;

    invoke-direct {v2, p0, v1}, Lcom/fongmi/hide/BlockKeysClick;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V


    const v0, 0x7f0b04cd

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b04ce

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b04cc

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v0, :cond_url_hook_done

    new-instance v3, Lcom/fongmi/hide/BlockUrlClick;

    invoke-direct {v3, p0, v1, v2}, Lcom/fongmi/hide/BlockUrlClick;-><init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_url_hook_done

    :cond_keys_hook_done
    return-void
.end method

.method public final o0(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 2
    .line 3
    iget-object p1, p1, Lg4;->z:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 9
    .line 10
    iget-object p1, p1, Lg4;->C:Lcom/google/android/material/textview/MaterialTextView;

    .line 11
    .line 12
    sget-object v0, Llc4;->a:Lmc4;

    .line 13
    .line 14
    invoke-virtual {v0}, Lbi;->f()Lcom/fongmi/android/tv/bean/Config;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/fongmi/android/tv/bean/Config;->getDesc()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 26
    .line 27
    iget-object p1, p1, Lg4;->r:Lcom/google/android/material/textview/MaterialTextView;

    .line 28
    .line 29
    sget-object v0, Lyr1;->a:Lzr1;

    .line 30
    .line 31
    invoke-virtual {v0}, Lbi;->f()Lcom/fongmi/android/tv/bean/Config;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/fongmi/android/tv/bean/Config;->getDesc()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 43
    .line 44
    iget-object p1, p1, Lg4;->G:Lcom/google/android/material/textview/MaterialTextView;

    .line 45
    .line 46
    sget-object v0, Lid4;->a:Ljd4;

    .line 47
    .line 48
    invoke-virtual {v0}, Lbi;->f()Lcom/fongmi/android/tv/bean/Config;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/fongmi/android/tv/bean/Config;->getDesc()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 60
    .line 61
    iget-object p1, p1, Lg4;->y:Lcom/google/android/material/textview/MaterialTextView;

    .line 62
    .line 63
    const-string v0, "5.8.8"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    new-instance p1, Lwd3;

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-direct {p1, p0, v0}, Lwd3;-><init>(Lcom/fongmi/android/tv/ui/activity/SettingActivity;B)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Lbl0;

    .line 75
    .line 76
    const/16 v1, 0xa

    .line 77
    .line 78
    invoke-direct {v0, v1, p1}, Lbl0;-><init>(BLjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lcom/github/catvod/utils/Task;->execute(Ljava/lang/Runnable;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->z0()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public onConfigEvent(Lh10;)V
    .locals 1
    .annotation runtime Luo3;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p1, Lh10;->c:Lg10;

    .line 2
    .line 3
    sget-object v0, Lg10;->c:Lg10;

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 9
    .line 10
    iget-object p1, p1, Lg4;->C:Lcom/google/android/material/textview/MaterialTextView;

    .line 11
    .line 12
    sget-object v0, Llc4;->a:Lmc4;

    .line 13
    .line 14
    invoke-virtual {v0}, Lbi;->f()Lcom/fongmi/android/tv/bean/Config;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/fongmi/android/tv/bean/Config;->getDesc()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 26
    .line 27
    iget-object p1, p1, Lg4;->r:Lcom/google/android/material/textview/MaterialTextView;

    .line 28
    .line 29
    sget-object v0, Lyr1;->a:Lzr1;

    .line 30
    .line 31
    invoke-virtual {v0}, Lbi;->f()Lcom/fongmi/android/tv/bean/Config;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/fongmi/android/tv/bean/Config;->getDesc()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 43
    .line 44
    iget-object p0, p0, Lg4;->G:Lcom/google/android/material/textview/MaterialTextView;

    .line 45
    .line 46
    sget-object p1, Lid4;->a:Ljd4;

    .line 47
    .line 48
    invoke-virtual {p1}, Lbi;->f()Lcom/fongmi/android/tv/bean/Config;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Config;->getDesc()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final v(Lcom/fongmi/android/tv/bean/Config;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Config;->getUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "file"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lin;

    .line 14
    .line 15
    const/16 v1, 0x9

    .line 16
    .line 17
    invoke-direct {v0, p0, p1, v1}, Lin;-><init>(Ljava/lang/Object;Ljava/lang/Object;B)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0}, Lv1;->m(Lr7;Ljava/util/function/Consumer;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->x0(Lcom/fongmi/android/tv/bean/Config;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final x0(Lcom/fongmi/android/tv/bean/Config;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Config;->getType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Lt61;->G(I)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lwd3;

    .line 19
    .line 20
    invoke-direct {v0, p0, v1}, Lwd3;-><init>(Lcom/fongmi/android/tv/ui/activity/SettingActivity;B)V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lid4;->a:Ljd4;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljd4;->l(Lcom/fongmi/android/tv/bean/Config;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lbi;->i(Lbl;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance v0, Lwd3;

    .line 33
    .line 34
    invoke-direct {v0, p0, v1}, Lwd3;-><init>(Lcom/fongmi/android/tv/ui/activity/SettingActivity;B)V

    .line 35
    .line 36
    .line 37
    sget-object p0, Lyr1;->a:Lzr1;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lzr1;->i:Ljava/util/List;

    .line 41
    .line 42
    iput-object v1, p0, Lzr1;->f:Lcom/fongmi/android/tv/bean/Live;

    .line 43
    .line 44
    iput-object v1, p0, Lzr1;->g:Ljava/util/List;

    .line 45
    .line 46
    iput-object v1, p0, Lzr1;->h:Ljava/util/List;

    .line 47
    .line 48
    sget-object v1, Lf93;->a:Lg93;

    .line 49
    .line 50
    invoke-virtual {v1}, Lg93;->a()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lzr1;->m(Lcom/fongmi/android/tv/bean/Config;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lbi;->i(Lbl;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    new-instance v0, Lwd3;

    .line 61
    .line 62
    invoke-direct {v0, p0, v1}, Lwd3;-><init>(Lcom/fongmi/android/tv/ui/activity/SettingActivity;B)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v0}, Lmc4;->t(Lcom/fongmi/android/tv/bean/Config;Lbl;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final z0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 2
    .line 3
    iget-object v0, v0, Lg4;->l:Lcom/google/android/material/textview/MaterialTextView;

    .line 4
    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v2, Llc4;->a:Lmc4;

    .line 11
    .line 12
    invoke-virtual {v2}, Lmc4;->o()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/github/catvod/bean/Doh;

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/github/catvod/bean/Doh;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v2, 0x0

    .line 41
    new-array v3, v2, [Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, [Ljava/lang/String;

    .line 48
    .line 49
    sget-object v3, Llc4;->a:Lmc4;

    .line 50
    .line 51
    invoke-virtual {v3}, Lmc4;->o()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const-string v4, "doh"

    .line 56
    .line 57
    invoke-static {v4}, Lcom/github/catvod/utils/Prefers;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v4}, Lcom/github/catvod/bean/Doh;->objectFrom(Ljava/lang/String;)Lcom/github/catvod/bean/Doh;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    aget-object v1, v1, v2

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 79
    .line 80
    iget-object v0, v0, Lg4;->n:Lcom/google/android/material/textview/MaterialTextView;

    .line 81
    .line 82
    const-string v1, "incognito"

    .line 83
    .line 84
    invoke-static {v1}, Lcom/github/catvod/utils/Prefers;->getBoolean(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-static {v1}, Lt61;->m(Z)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b04ca

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_block_init_done

    invoke-static {}, Lcom/fongmi/hide/Block;->isBlockOn()Z

    move-result v1

    invoke-static {v1}, Lt61;->m(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_block_init_done
    const v0, 0x7f0b04cc

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_keys_init_done

    invoke-static {}, Lcom/fongmi/hide/Block;->getKeys()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V


    const v0, 0x7f0b04ce

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_url_init_done

    invoke-static {}, Lcom/fongmi/hide/Block;->getKeysUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_url_init_done
    const v0, 0x7f0b04cc

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/fongmi/hide/BlockRefresh;->run(Landroid/widget/TextView;)V

    :cond_keys_init_done
    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->E:Lg4;

    .line 96
    .line 97
    iget-object v0, v0, Lg4;->w:Lcom/google/android/material/textview/MaterialTextView;

    .line 98
    .line 99
    const v1, 0x7f030009

    .line 100
    .line 101
    .line 102
    invoke-static {v1}, Lv1;->i(I)[Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iput-object v1, p0, Lcom/fongmi/android/tv/ui/activity/SettingActivity;->F:[Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {}, Lq54;->I()I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    aget-object p0, v1, p0

    .line 113
    .line 114
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method
