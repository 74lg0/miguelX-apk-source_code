.class public interface abstract Lcom/braze/ui/contentcards/handlers/IContentCardsViewBindingHandler;
.super Ljava/lang/Object;
.source "IContentCardsViewBindingHandler.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\u0003H&J.\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0003H&J.\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0003H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0012\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/braze/ui/contentcards/handlers/IContentCardsViewBindingHandler;",
        "Landroid/os/Parcelable;",
        "getItemViewType",
        "",
        "context",
        "Landroid/content/Context;",
        "cards",
        "",
        "Lcom/braze/models/cards/Card;",
        "adapterPosition",
        "onBindViewHolder",
        "",
        "viewHolder",
        "Lcom/braze/ui/contentcards/view/ContentCardViewHolder;",
        "onCreateViewHolder",
        "viewGroup",
        "Landroid/view/ViewGroup;",
        "viewType",
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


# virtual methods
.method public abstract getItemViewType(Landroid/content/Context;Ljava/util/List;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/braze/models/cards/Card;",
            ">;I)I"
        }
    .end annotation
.end method

.method public abstract onBindViewHolder(Landroid/content/Context;Ljava/util/List;Lcom/braze/ui/contentcards/view/ContentCardViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/braze/models/cards/Card;",
            ">;",
            "Lcom/braze/ui/contentcards/view/ContentCardViewHolder;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onCreateViewHolder(Landroid/content/Context;Ljava/util/List;Landroid/view/ViewGroup;I)Lcom/braze/ui/contentcards/view/ContentCardViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/braze/models/cards/Card;",
            ">;",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/braze/ui/contentcards/view/ContentCardViewHolder;"
        }
    .end annotation
.end method
