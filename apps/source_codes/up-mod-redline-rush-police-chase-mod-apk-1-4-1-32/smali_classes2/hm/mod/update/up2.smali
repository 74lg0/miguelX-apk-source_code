.class public Lhm/mod/update/up2;
.super Ljava/lang/Object;
.source "up2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 26

    move-object/from16 v1, p0

    .line 32
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 33
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v0, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x11

    .line 34
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v11, 0x3f800000    # 1.0f

    .line 35
    iput v11, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 36
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v15, Landroid/widget/LinearLayout;

    invoke-direct {v15, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 47
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "HappyMod\ud83d\udcaf"

    .line 48
    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "#ffffff"

    .line 50
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-static/range {p0 .. p0}, Lhm/mod/update/up5;->setUpdateShow(Landroid/content/Context;)V

    move-object/from16 v0, p5

    .line 56
    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 59
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 60
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setGravity(I)V

    const-string v0, "3"

    .line 61
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "Update"

    .line 62
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, 0x0

    const/16 v0, 0x32

    .line 63
    invoke-virtual {v13, v11, v11, v11, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v9, 0xa

    .line 64
    invoke-virtual {v14, v11, v11, v11, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 65
    invoke-virtual {v2, v11, v11, v11, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v9, 0x41a00000    # 20.0f

    .line 66
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 68
    invoke-virtual {v13}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    const/4 v11, 0x1

    invoke-virtual {v13, v9, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 v9, 0x41800000    # 16.0f

    .line 69
    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v16, "#FFBF00"

    const-string v17, "#DF3A01"

    const-string v18, "#04B486"

    const-string v19, "#DF01D7"

    const-string v20, "#fc00fc"

    const-string v21, "#9A2EFE"

    const-string v22, "#31B404"

    const-string v23, "#ff0092ff"

    const-string v24, "#0040FF"

    .line 70
    filled-new-array/range {v16 .. v24}, [Ljava/lang/String;

    move-result-object v16

    .line 71
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v11, 0x9

    invoke-virtual {v0, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v16, v0

    .line 72
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 74
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41700000    # 15.0f

    .line 75
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v9, 0x19

    const/4 v11, 0x7

    .line 76
    invoke-virtual {v6, v9, v11, v9, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 77
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 78
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    invoke-virtual {v6}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    const/4 v8, 0x1

    invoke-virtual {v6, v3, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 80
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 81
    invoke-virtual {v5, v9, v11, v9, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 82
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    const-string v2, "#000000"

    .line 84
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    invoke-virtual {v5}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v5, v2, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 86
    new-instance v2, Lhm/mod/update/up3;

    invoke-direct {v2}, Lhm/mod/update/up3;-><init>()V

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0xf

    invoke-virtual {v2, v3, v0}, Lhm/mod/update/up3;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    new-instance v0, Lhm/mod/update/up3;

    invoke-direct {v0}, Lhm/mod/update/up3;-><init>()V

    const-string v2, "#ABE53C"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lhm/mod/update/up3;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    new-instance v8, Lhm/mod/update/up4;

    const/16 v9, 0x32

    move-object v0, v8

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v11, v4

    move-object/from16 v4, p4

    move-object v9, v5

    move-object/from16 v5, p3

    move-object/from16 v25, v6

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lhm/mod/update/up4;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x14

    const/4 v1, 0x0

    .line 91
    invoke-virtual {v15, v1, v0, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 92
    invoke-virtual {v15, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 93
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x10

    .line 94
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v5, 0x3f800000    # 1.0f

    .line 95
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 96
    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 97
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 98
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 99
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 100
    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    invoke-virtual {v11, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v25

    .line 102
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setGravity(I)V

    const-string v0, "#006F09"

    .line 106
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 107
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v0, 0x0

    .line 109
    invoke-virtual {v12, v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    const/4 v1, 0x1

    .line 110
    invoke-virtual {v12, v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    const/4 v3, 0x2

    .line 111
    invoke-virtual {v12, v15, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 112
    invoke-virtual {v15, v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 113
    invoke-virtual {v15, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    const/high16 v0, 0x40800000    # 4.0f

    .line 118
    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setElevation(F)V

    :cond_0
    const/16 v0, 0x32

    .line 122
    invoke-virtual {v12, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 123
    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 124
    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 p0, v7

    move-object/from16 p1, v12

    move/from16 p2, v0

    move/from16 p3, v1

    move/from16 p4, v2

    move/from16 p5, v3

    .line 125
    invoke-virtual/range {p0 .. p5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    move/from16 v0, p7

    .line 127
    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const/4 v0, 0x1

    .line 128
    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 129
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v0, 0x0

    .line 130
    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 131
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static showAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    .line 138
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 141
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x11

    .line 143
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 145
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 146
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 147
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 148
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 149
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 150
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 151
    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 152
    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x10

    .line 155
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 156
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v6, p1

    .line 157
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x2

    .line 158
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 159
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 160
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const-string v5, "#ffffff"

    .line 162
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v4, p4

    .line 168
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/16 v4, 0xe

    .line 171
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 172
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 173
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v4, 0x11

    .line 174
    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setGravity(I)V

    const-string v4, "3"

    .line 175
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v4, p6

    .line 176
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    const/16 v6, 0xa

    .line 177
    invoke-virtual {v9, v4, v4, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 178
    invoke-virtual {v10, v4, v4, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v6, 0x32

    .line 179
    invoke-virtual {v15, v4, v4, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v7, 0x41900000    # 18.0f

    .line 180
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 182
    invoke-virtual {v9}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    const/4 v6, 0x1

    invoke-virtual {v9, v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 v7, 0x41600000    # 14.0f

    .line 183
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v18, "#FFBF00"

    const-string v19, "#DF3A01"

    const-string v20, "#04B486"

    const-string v21, "#DF01D7"

    const-string v22, "#fc00fc"

    const-string v23, "#9A2EFE"

    const-string v24, "#31B404"

    const-string v25, "#ff0092ff"

    const-string v26, "#0040FF"

    .line 184
    filled-new-array/range {v18 .. v26}, [Ljava/lang/String;

    move-result-object v7

    .line 185
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-object v4, v7, v4

    const/4 v6, -0x1

    .line 186
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41800000    # 16.0f

    .line 187
    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 188
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41700000    # 15.0f

    .line 189
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v7, 0x19

    const/4 v15, 0x7

    .line 190
    invoke-virtual {v12, v7, v15, v7, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v7, 0x11

    .line 191
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 192
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    invoke-virtual {v12}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v12, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 194
    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v5, 0x1e

    const/16 v6, 0xc

    .line 195
    invoke-virtual {v13, v5, v6, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    const v5, 0x800005

    .line 196
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setGravity(I)V

    const-string v5, "#000000"

    .line 198
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    invoke-virtual {v13}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v13, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 200
    new-instance v5, Lhm/mod/update/up3;

    invoke-direct {v5}, Lhm/mod/update/up3;-><init>()V

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/16 v6, 0xf

    invoke-virtual {v5, v6, v4}, Lhm/mod/update/up3;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    new-instance v4, Lhm/mod/update/up3;

    invoke-direct {v4}, Lhm/mod/update/up3;-><init>()V

    const-string v5, "#ABE53C"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lhm/mod/update/up3;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    new-instance v4, Lhm/mod/update/up6;

    invoke-direct {v4, v0, v2}, Lhm/mod/update/up6;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v4, 0x14

    const/4 v6, 0x0

    .line 205
    invoke-virtual {v11, v6, v4, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 206
    invoke-virtual {v11, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 208
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x2

    invoke-direct {v7, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 210
    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v7, v4, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x10

    .line 215
    iput v4, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v4, 0x14

    .line 217
    invoke-virtual {v7, v4, v6, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 218
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v4, v6, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v15, 0x11

    .line 219
    iput v15, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 225
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v15, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x3f800000    # 1.0f

    .line 226
    iput v6, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v6, 0x11

    .line 229
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 233
    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    invoke-virtual {v14, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 240
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 241
    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 242
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 243
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v15, -0x2

    invoke-direct {v12, v2, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 244
    iput v6, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v2, 0x14

    const/4 v6, 0x0

    .line 248
    invoke-virtual {v12, v6, v6, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 249
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    new-instance v2, Lhm/mod/update/up2$1;

    invoke-direct {v2, v8}, Lhm/mod/update/up2$1;-><init>(Landroid/widget/LinearLayout;)V

    .line 265
    new-instance v6, Landroid/webkit/WebView;

    invoke-direct {v6, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 266
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 268
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    move-object/from16 p4, v7

    const/high16 v7, 0x42900000    # 72.0f

    move-object/from16 v17, v10

    const/4 v10, 0x1

    invoke-static {v10, v7, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    .line 269
    iput v7, v12, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 270
    iput v7, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v7, 0x0

    .line 271
    iput v7, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 273
    invoke-virtual {v6, v12}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<html><head></head><body style=\"margin: 0; padding: 0\"><img src=\""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p2

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\" style=\"object-fit: cover; width: 100%; height: 100%;\" /></body></html>"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v12, "text/html"

    const-string v15, "utf-8"

    invoke-virtual {v6, v7, v12, v15}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    move-object/from16 v19, v9

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 283
    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v7, 0x0

    .line 284
    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 286
    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 287
    invoke-virtual {v6, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 290
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 291
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 292
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v20, v6

    move-object/from16 v21, v13

    const/4 v6, -0x2

    const/4 v13, -0x1

    invoke-direct {v9, v13, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x10

    .line 293
    iput v6, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v13, 0x0

    .line 295
    invoke-virtual {v9, v6, v13, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 296
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "#006F09"

    .line 299
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 300
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v11, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 304
    new-instance v6, Landroid/webkit/WebView;

    invoke-direct {v6, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 307
    invoke-static/range {p0 .. p0}, Lhm/mod/update/up5;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 309
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    move-object/from16 v16, v3

    const/4 v3, -0x1

    const/4 v13, -0x2

    invoke-virtual {v9, v13, v3}, Landroid/view/Window;->setLayout(II)V

    .line 311
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x42c80000    # 100.0f

    invoke-static {v0, v13}, Lhm/mod/update/up5;->dip2px(Landroid/content/Context;F)I

    move-result v13

    invoke-direct {v9, v3, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x1

    .line 312
    iput v3, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 314
    invoke-virtual {v6, v9}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" style=\"object-fit: cover; width: 100%; height:100%;\" /></body></html>"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v12, v15}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v16, v3

    .line 326
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v13, -0x1

    invoke-direct {v3, v13, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" style=\"object-fit: cover; width: 100%; height: auto;\" /></body></html>"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v12, v15}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :goto_0
    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 344
    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v1, 0x0

    .line 345
    invoke-virtual {v6, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 346
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 347
    invoke-virtual {v6, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 350
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 351
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 352
    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 353
    invoke-virtual {v11, v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    move-object/from16 v2, v21

    .line 354
    invoke-virtual {v11, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    move-object/from16 v2, v20

    .line 356
    invoke-virtual {v4, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 357
    invoke-virtual {v4, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    move-object/from16 v2, v19

    .line 359
    invoke-virtual {v7, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    move-object/from16 v1, v17

    .line 360
    invoke-virtual {v7, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    const/16 v1, 0x32

    .line 369
    invoke-virtual {v8, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 370
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move-object/from16 v1, p4

    .line 371
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    new-instance v1, Lhm/mod/update/up6;

    move-object/from16 v2, p5

    invoke-direct {v1, v0, v2}, Lhm/mod/update/up6;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 p0, v16

    move-object/from16 p1, v8

    move/from16 p2, v0

    move/from16 p3, v1

    move/from16 p4, v2

    move/from16 p5, v3

    .line 376
    invoke-virtual/range {p0 .. p5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    move-object/from16 v0, v16

    const/4 v1, 0x1

    .line 378
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 379
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 380
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v1, 0x0

    .line 381
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 382
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
