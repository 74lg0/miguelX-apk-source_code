.class final Lcom/braze/ui/contentcards/view/CaptionedImageContentCardView$ViewHolder;
.super Lcom/braze/ui/contentcards/view/ContentCardViewHolder;
.source "CaptionedImageContentCardView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braze/ui/contentcards/view/CaptionedImageContentCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\r\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/braze/ui/contentcards/view/CaptionedImageContentCardView$ViewHolder;",
        "Lcom/braze/ui/contentcards/view/ContentCardViewHolder;",
        "view",
        "Landroid/view/View;",
        "(Lcom/braze/ui/contentcards/view/CaptionedImageContentCardView;Landroid/view/View;)V",
        "description",
        "Landroid/widget/TextView;",
        "getDescription",
        "()Landroid/widget/TextView;",
        "imageView",
        "Landroid/widget/ImageView;",
        "getImageView",
        "()Landroid/widget/ImageView;",
        "title",
        "getTitle",
        "android-sdk-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final description:Landroid/widget/TextView;

.field private final imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/braze/ui/contentcards/view/CaptionedImageContentCardView;

.field private final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/braze/ui/contentcards/view/CaptionedImageContentCardView;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/braze/ui/contentcards/view/CaptionedImageContentCardView$ViewHolder;->this$0:Lcom/braze/ui/contentcards/view/CaptionedImageContentCardView;

    invoke-virtual {p1}, Lcom/braze/ui/contentcards/view/CaptionedImageContentCardView;->isUnreadIndicatorEnabled()Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/braze/ui/contentcards/view/ContentCardViewHolder;-><init>(Landroid/view/View;Z)V

    sget p1, Lcom/braze/ui/R$id;->com_braze_content_cards_captioned_image_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/braze/ui/contentcards/view/CaptionedImageContentCardView$ViewHolder;->title:Landroid/widget/TextView;

    sget p1, Lcom/braze/ui/R$id;->com_braze_content_cards_captioned_image_description:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/braze/ui/contentcards/view/CaptionedImageContentCardView$ViewHolder;->description:Landroid/widget/TextView;

    sget p1, Lcom/braze/ui/R$id;->com_braze_content_cards_captioned_image_card_image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/braze/ui/contentcards/view/CaptionedImageContentCardView$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final getDescription()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/braze/ui/contentcards/view/CaptionedImageContentCardView$ViewHolder;->description:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/braze/ui/contentcards/view/CaptionedImageContentCardView$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getTitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/braze/ui/contentcards/view/CaptionedImageContentCardView$ViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method
