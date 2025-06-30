.class public Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;
.super Ljava/lang/Object;
.source "TextureBindingOption.java"


# static fields
.field public static final DO_NOT_SCALE:I = -0x1

.field public static final DO_NOT_USE_PLACEHOLDER:I = -0x1

.field public static final DefaultBindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

.field public static final DefaultResourceIdForEmpty:I

.field public static final DefaultResourceIdForError:I

.field public static final DefaultResourceIdForLoading:I

.field public static final KeepAsIsBindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;


# instance fields
.field public final height:I

.field public final resourceIdForError:I

.field public final resourceIdForLoading:I

.field public final useFileCache:Z

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "empty"

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getDrawableRValue(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->DefaultResourceIdForLoading:I

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getDrawableRValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->DefaultResourceIdForEmpty:I

    const-string v0, "error"

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getDrawableRValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->DefaultResourceIdForError:I

    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->DefaultBindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(IIIIZ)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->KeepAsIsBindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, -0x1

    const/4 v2, -0x1

    sget v3, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->DefaultResourceIdForLoading:I

    sget v4, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->DefaultResourceIdForError:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(IIIIZ)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->width:I

    iput p2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->height:I

    iput p3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForLoading:I

    iput p4, p0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForError:I

    iput-boolean p5, p0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->useFileCache:Z

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 6

    sget v3, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->DefaultResourceIdForLoading:I

    sget v4, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->DefaultResourceIdForError:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(IIIIZ)V

    return-void
.end method

.method public static createDoNotScale(IIZ)Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;
    .locals 7

    new-instance v6, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    const/4 v1, -0x1

    const/4 v2, -0x1

    move-object v0, v6

    move v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(IIIIZ)V

    return-object v6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->width:I

    iget v3, p1, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->width:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->height:I

    iget v3, p1, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->height:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForError:I

    iget v3, p1, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForError:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForLoading:I

    iget p1, p1, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForLoading:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
