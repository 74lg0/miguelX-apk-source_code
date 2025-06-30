.class public Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;
.super Landroid/view/ViewGroup;
.source "XLECheckBox.java"


# instance fields
.field private final checkBox:Landroid/widget/CheckBox;

.field private final subText:Landroid/widget/TextView;

.field private final text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/widget/CheckBox;

    invoke-direct {p3, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    sget v1, Lcom/microsoft/xboxtcui/R$drawable;->apptheme_btn_check_holo_light:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    new-instance v1, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox$1;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/microsoft/xboxtcui/R$styleable;->XLECheckBox:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/microsoft/xboxtcui/R$styleable;->XLECheckBox_textStyle:I

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/microsoft/xbox/toolkit/ui/util/LibCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    sget v0, Lcom/microsoft/xboxtcui/R$styleable;->XLECheckBox_textTypefaceSource:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/FontManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/FontManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/microsoft/xbox/toolkit/ui/FontManager;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v0, Lcom/microsoft/xboxtcui/R$styleable;->XLECheckBox_subTextStyle:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/microsoft/xbox/toolkit/ui/util/LibCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    sget v0, Lcom/microsoft/xboxtcui/R$styleable;->XLECheckBox_subTextTypefaceSource:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/FontManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/FontManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/microsoft/xbox/toolkit/ui/FontManager;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    sget v0, Lcom/microsoft/xboxtcui/R$styleable;->XLECheckBox_text:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    sget v0, Lcom/microsoft/xboxtcui/R$styleable;->XLECheckBox_subText:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method


# virtual methods
.method public getSubText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingTop()I

    move-result p2

    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p3}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    iget-object p4, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/2addr p2, p3

    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p3}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int p3, p2, p3

    iget-object p4, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p4}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p4, p1, p3, p5, v0}, Landroid/widget/CheckBox;->layout(IIII)V

    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p3}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p1, p3

    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p5, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p2

    invoke-virtual {p3, p1, p2, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p3

    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p5, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p2

    invoke-virtual {p3, p1, p2, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-nez p2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingTop()I

    move-result v6

    sub-int v7, v0, v5

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int v8, v4, v6

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingBottom()I

    move-result v9

    sub-int v9, v8, v9

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v10, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v10, v7, v9}, Landroid/widget/CheckBox;->measure(II)V

    iget-object v7, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    sub-int v7, v0, v5

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingRight()I

    move-result v9

    sub-int v9, v7, v9

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v8, v10

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v10, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-static {v9, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v10, v9, v8}, Landroid/widget/TextView;->measure(II)V

    iget-object v8, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v8

    iget-object v9, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v6, v8

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int v8, v4, v6

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v8, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v8, v3, v1}, Landroid/widget/TextView;->measure(II)V

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v5, v1

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v6, v1

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingRight()I

    move-result v1

    add-int/2addr v5, v1

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingBottom()I

    move-result v1

    add-int/2addr v6, v1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_1
    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_2
    invoke-virtual {p0, v5, v6}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setMeasuredDimension(II)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setSubText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    return-void
.end method
