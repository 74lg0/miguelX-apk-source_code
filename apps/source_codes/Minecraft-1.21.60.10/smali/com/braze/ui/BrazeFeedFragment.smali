.class public Lcom/braze/ui/BrazeFeedFragment;
.super Landroidx/fragment/app/ListFragment;
.source "BrazeFeedFragment.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/ui/BrazeFeedFragment$FeedGestureListener;
    }
.end annotation


# static fields
.field private static final AUTO_HIDE_REFRESH_INDICATOR_DELAY_MS:J = 0x9c4L

.field private static final MAX_FEED_TTL_SECONDS:I = 0x3c

.field private static final NETWORK_PROBLEM_WARNING_MS:I = 0x1388

.field static final SAVED_INSTANCE_STATE_KEY_CARD_CATEGORY:Ljava/lang/String; = "CARD_CATEGORY"

.field static final SAVED_INSTANCE_STATE_KEY_CURRENT_CARD_INDEX_AT_BOTTOM_OF_SCREEN:Ljava/lang/String; = "CURRENT_CARD_INDEX_AT_BOTTOM_OF_SCREEN"

.field static final SAVED_INSTANCE_STATE_KEY_PREVIOUS_VISIBLE_HEAD_CARD_INDEX:Ljava/lang/String; = "PREVIOUS_VISIBLE_HEAD_CARD_INDEX"

.field static final SAVED_INSTANCE_STATE_KEY_SKIP_CARD_IMPRESSIONS_RESET:Ljava/lang/String; = "SKIP_CARD_IMPRESSIONS_RESET"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/braze/ui/adapters/BrazeListAdapter;

.field private mCategories:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/CardCategory;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentCardIndexAtBottomOfScreen:I

.field private mEmptyFeedLayout:Landroid/widget/LinearLayout;

.field private mFeedRootLayout:Landroid/widget/RelativeLayout;

.field private mFeedSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private mFeedUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/FeedUpdatedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private mLoadingSpinner:Landroid/widget/ProgressBar;

.field private final mMainThreadLooper:Landroid/os/Handler;

.field private mNetworkErrorLayout:Landroid/widget/LinearLayout;

.field mPreviousVisibleHeadCardIndex:I

.field private final mShowNetworkError:Ljava/lang/Runnable;

.field mSkipCardImpressionsReset:Z

.field private mSortEnabled:Z

.field private mTransparentFullBoundsContainerView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/braze/ui/BrazeFeedFragment;

    invoke-static {v0}, Lcom/braze/support/BrazeLogger;->getBrazeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/braze/ui/BrazeFeedFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mMainThreadLooper:Landroid/os/Handler;

    new-instance v0, Lcom/braze/ui/BrazeFeedFragment$1;

    invoke-direct {v0, p0}, Lcom/braze/ui/BrazeFeedFragment$1;-><init>(Lcom/braze/ui/BrazeFeedFragment;)V

    iput-object v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mShowNetworkError:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mSortEnabled:Z

    iput-boolean v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mSkipCardImpressionsReset:Z

    iput v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mPreviousVisibleHeadCardIndex:I

    iput v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mCurrentCardIndexAtBottomOfScreen:I

    return-void
.end method

.method static synthetic access$000(Lcom/braze/ui/BrazeFeedFragment;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/braze/ui/BrazeFeedFragment;->mLoadingSpinner:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/braze/ui/BrazeFeedFragment;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/braze/ui/BrazeFeedFragment;->mNetworkErrorLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/braze/ui/BrazeFeedFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 0

    iget-object p0, p0, Lcom/braze/ui/BrazeFeedFragment;->mFeedSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/braze/ui/BrazeFeedFragment;)Lcom/braze/ui/adapters/BrazeListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/braze/ui/BrazeFeedFragment;->mAdapter:Lcom/braze/ui/adapters/BrazeListAdapter;

    return-object p0
.end method

.method static synthetic lambda$onViewCreated$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$sortFeedCards$4(Lcom/braze/models/cards/Card;Lcom/braze/models/cards/Card;)I
    .locals 1

    invoke-virtual {p0}, Lcom/braze/models/cards/Card;->isIndicatorHighlighted()Z

    move-result v0

    invoke-virtual {p1}, Lcom/braze/models/cards/Card;->isIndicatorHighlighted()Z

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/braze/models/cards/Card;->isIndicatorHighlighted()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private setOnScreenCardsToRead()V
    .locals 3

    iget-object v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mAdapter:Lcom/braze/ui/adapters/BrazeListAdapter;

    iget v1, p0, Lcom/braze/ui/BrazeFeedFragment;->mPreviousVisibleHeadCardIndex:I

    iget v2, p0, Lcom/braze/ui/BrazeFeedFragment;->mCurrentCardIndexAtBottomOfScreen:I

    invoke-virtual {v0, v1, v2}, Lcom/braze/ui/adapters/BrazeListAdapter;->batchSetCardsToRead(II)V

    return-void
.end method


# virtual methods
.method public getCategories()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/CardCategory;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mCategories:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getSortEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mSortEnabled:Z

    return v0
.end method

.method synthetic lambda$onRefresh$5$com-braze-ui-BrazeFeedFragment()V
    .locals 2

    iget-object v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mFeedSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method synthetic lambda$onViewCreated$0$com-braze-ui-BrazeFeedFragment(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/braze/ui/BrazeFeedFragment;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$onViewCreated$2$com-braze-ui-BrazeFeedFragment(Lcom/braze/events/FeedUpdatedEvent;Landroid/widget/ListView;)V
    .locals 8

    sget-object v0, Lcom/braze/ui/BrazeFeedFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updating feed views in response to FeedUpdatedEvent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/braze/support/BrazeLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/braze/ui/BrazeFeedFragment;->mMainThreadLooper:Landroid/os/Handler;

    iget-object v2, p0, Lcom/braze/ui/BrazeFeedFragment;->mShowNetworkError:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/braze/ui/BrazeFeedFragment;->mNetworkErrorLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/braze/ui/BrazeFeedFragment;->mCategories:Ljava/util/EnumSet;

    invoke-virtual {p1, v1}, Lcom/braze/events/FeedUpdatedEvent;->getCardCount(Ljava/util/EnumSet;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v1, p0, Lcom/braze/ui/BrazeFeedFragment;->mAdapter:Lcom/braze/ui/adapters/BrazeListAdapter;

    invoke-virtual {v1}, Lcom/braze/ui/adapters/BrazeListAdapter;->clear()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/braze/ui/BrazeFeedFragment;->mEmptyFeedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/braze/ui/BrazeFeedFragment;->mLoadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/braze/ui/BrazeFeedFragment;->mTransparentFullBoundsContainerView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/braze/events/FeedUpdatedEvent;->isFromOfflineStorage()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/braze/events/FeedUpdatedEvent;->lastUpdatedInSecondsFromEpoch()J

    move-result-wide v4

    const-wide/16 v6, 0x3c

    add-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    const-string v1, "Feed received was older than the max time to live of 60 seconds, displaying it for now, but requesting an updated view from the server."

    invoke-static {v0, v1}, Lcom/braze/support/BrazeLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/braze/ui/BrazeFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/braze/Braze;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v1

    invoke-virtual {v1}, Lcom/braze/Braze;->requestFeedRefresh()V

    iget-object v1, p0, Lcom/braze/ui/BrazeFeedFragment;->mCategories:Ljava/util/EnumSet;

    invoke-virtual {p1, v1}, Lcom/braze/events/FeedUpdatedEvent;->getCardCount(Ljava/util/EnumSet;)I

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "Old feed was empty, putting up a network spinner and registering the network error message with a delay of 5000ms."

    invoke-static {v0, p1}, Lcom/braze/support/BrazeLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/braze/ui/BrazeFeedFragment;->mEmptyFeedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/braze/ui/BrazeFeedFragment;->mLoadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/braze/ui/BrazeFeedFragment;->mTransparentFullBoundsContainerView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/braze/ui/BrazeFeedFragment;->mMainThreadLooper:Landroid/os/Handler;

    iget-object p2, p0, Lcom/braze/ui/BrazeFeedFragment;->mShowNetworkError:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mCategories:Ljava/util/EnumSet;

    invoke-virtual {p1, v0}, Lcom/braze/events/FeedUpdatedEvent;->getCardCount(Ljava/util/EnumSet;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/braze/ui/BrazeFeedFragment;->mLoadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/braze/ui/BrazeFeedFragment;->mEmptyFeedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/braze/ui/BrazeFeedFragment;->mTransparentFullBoundsContainerView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mSortEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mCategories:Ljava/util/EnumSet;

    invoke-virtual {p1, v0}, Lcom/braze/events/FeedUpdatedEvent;->getCardCount(Ljava/util/EnumSet;)I

    move-result v0

    iget-object v1, p0, Lcom/braze/ui/BrazeFeedFragment;->mCategories:Ljava/util/EnumSet;

    invoke-virtual {p1, v1}, Lcom/braze/events/FeedUpdatedEvent;->getUnreadCardCount(Ljava/util/EnumSet;)I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mAdapter:Lcom/braze/ui/adapters/BrazeListAdapter;

    iget-object v1, p0, Lcom/braze/ui/BrazeFeedFragment;->mCategories:Ljava/util/EnumSet;

    invoke-virtual {p1, v1}, Lcom/braze/events/FeedUpdatedEvent;->getFeedCards(Ljava/util/EnumSet;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/braze/ui/BrazeFeedFragment;->sortFeedCards(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/braze/ui/adapters/BrazeListAdapter;->replaceFeed(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mAdapter:Lcom/braze/ui/adapters/BrazeListAdapter;

    iget-object v1, p0, Lcom/braze/ui/BrazeFeedFragment;->mCategories:Ljava/util/EnumSet;

    invoke-virtual {p1, v1}, Lcom/braze/events/FeedUpdatedEvent;->getFeedCards(Ljava/util/EnumSet;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/braze/ui/adapters/BrazeListAdapter;->replaceFeed(Ljava/util/List;)V

    :goto_1
    invoke-virtual {p2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_2
    iget-object p1, p0, Lcom/braze/ui/BrazeFeedFragment;->mFeedSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method synthetic lambda$onViewCreated$3$com-braze-ui-BrazeFeedFragment(Landroid/widget/ListView;Lcom/braze/events/FeedUpdatedEvent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/braze/ui/BrazeFeedFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/braze/ui/BrazeFeedFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2, p1}, Lcom/braze/ui/BrazeFeedFragment$$ExternalSyntheticLambda5;-><init>(Lcom/braze/ui/BrazeFeedFragment;Lcom/braze/events/FeedUpdatedEvent;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method loadFragmentStateFromSavedInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mCategories:Ljava/util/EnumSet;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/braze/enums/CardCategory;->getAllCategories()Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mCategories:Ljava/util/EnumSet;

    :cond_1
    const-string v0, "PREVIOUS_VISIBLE_HEAD_CARD_INDEX"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mPreviousVisibleHeadCardIndex:I

    const-string v0, "CURRENT_CARD_INDEX_AT_BOTTOM_OF_SCREEN"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mCurrentCardIndexAtBottomOfScreen:I

    const-string v0, "SKIP_CARD_IMPRESSIONS_RESET"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mSkipCardImpressionsReset:Z

    const-string v0, "CARD_CATEGORY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mCategories:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/braze/ui/BrazeFeedFragment;->mCategories:Ljava/util/EnumSet;

    invoke-static {v0}, Lcom/braze/enums/CardCategory;->valueOf(Ljava/lang/String;)Lcom/braze/enums/CardCategory;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onAttach(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mAdapter:Lcom/braze/ui/adapters/BrazeListAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/braze/ui/adapters/BrazeListAdapter;

    sget v1, Lcom/braze/ui/R$id;->tag:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p1, v1, v2}, Lcom/braze/ui/adapters/BrazeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mAdapter:Lcom/braze/ui/adapters/BrazeListAdapter;

    invoke-static {}, Lcom/braze/enums/CardCategory;->getAllCategories()Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mCategories:Ljava/util/EnumSet;

    :cond_0
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    new-instance v1, Lcom/braze/ui/BrazeFeedFragment$FeedGestureListener;

    invoke-direct {v1, p0}, Lcom/braze/ui/BrazeFeedFragment$FeedGestureListener;-><init>(Lcom/braze/ui/BrazeFeedFragment;)V

    invoke-direct {v0, p1, v1}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    sget p3, Lcom/braze/ui/R$layout;->com_braze_feed:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/braze/ui/R$id;->com_braze_feed_network_error:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/braze/ui/BrazeFeedFragment;->mNetworkErrorLayout:Landroid/widget/LinearLayout;

    sget p2, Lcom/braze/ui/R$id;->com_braze_feed_loading_spinner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/braze/ui/BrazeFeedFragment;->mLoadingSpinner:Landroid/widget/ProgressBar;

    sget p2, Lcom/braze/ui/R$id;->com_braze_feed_empty_feed:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/braze/ui/BrazeFeedFragment;->mEmptyFeedLayout:Landroid/widget/LinearLayout;

    sget p2, Lcom/braze/ui/R$id;->com_braze_feed_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/braze/ui/BrazeFeedFragment;->mFeedRootLayout:Landroid/widget/RelativeLayout;

    sget p2, Lcom/braze/ui/R$id;->braze_feed_swipe_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p2, p0, Lcom/braze/ui/BrazeFeedFragment;->mFeedSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p2, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    iget-object p2, p0, Lcom/braze/ui/BrazeFeedFragment;->mFeedSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    iget-object p2, p0, Lcom/braze/ui/BrazeFeedFragment;->mFeedSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    sget p3, Lcom/braze/ui/R$color;->com_braze_newsfeed_swipe_refresh_color_1:I

    sget v0, Lcom/braze/ui/R$color;->com_braze_newsfeed_swipe_refresh_color_2:I

    sget v1, Lcom/braze/ui/R$color;->com_braze_newsfeed_swipe_refresh_color_3:I

    sget v2, Lcom/braze/ui/R$color;->com_braze_newsfeed_swipe_refresh_color_4:I

    filled-new-array {p3, v0, v1, v2}, [I

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    sget p2, Lcom/braze/ui/R$id;->com_braze_feed_transparent_full_bounds_container_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/braze/ui/BrazeFeedFragment;->mTransparentFullBoundsContainerView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/ListFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/braze/ui/BrazeFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/braze/Braze;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v0

    iget-object v1, p0, Lcom/braze/ui/BrazeFeedFragment;->mFeedUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;

    const-class v2, Lcom/braze/events/FeedUpdatedEvent;

    invoke-virtual {v0, v1, v2}, Lcom/braze/Braze;->removeSingleSubscription(Lcom/braze/events/IEventSubscriber;Ljava/lang/Class;)V

    invoke-direct {p0}, Lcom/braze/ui/BrazeFeedFragment;->setOnScreenCardsToRead()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/ListFragment;->onDetach()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/braze/ui/BrazeFeedFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/ListFragment;->onPause()V

    invoke-direct {p0}, Lcom/braze/ui/BrazeFeedFragment;->setOnScreenCardsToRead()V

    return-void
.end method

.method public onRefresh()V
    .locals 4

    invoke-virtual {p0}, Lcom/braze/ui/BrazeFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/braze/Braze;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/Braze;->requestFeedRefresh()V

    iget-object v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mMainThreadLooper:Landroid/os/Handler;

    new-instance v1, Lcom/braze/ui/BrazeFeedFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/braze/ui/BrazeFeedFragment$$ExternalSyntheticLambda3;-><init>(Lcom/braze/ui/BrazeFeedFragment;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/ListFragment;->onResume()V

    invoke-virtual {p0}, Lcom/braze/ui/BrazeFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/braze/Braze;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/Braze;->logFeedDisplayed()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "PREVIOUS_VISIBLE_HEAD_CARD_INDEX"

    iget v1, p0, Lcom/braze/ui/BrazeFeedFragment;->mPreviousVisibleHeadCardIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CURRENT_CARD_INDEX_AT_BOTTOM_OF_SCREEN"

    iget v1, p0, Lcom/braze/ui/BrazeFeedFragment;->mCurrentCardIndexAtBottomOfScreen:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "SKIP_CARD_IMPRESSIONS_RESET"

    iget-boolean v1, p0, Lcom/braze/ui/BrazeFeedFragment;->mSkipCardImpressionsReset:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mCategories:Ljava/util/EnumSet;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/braze/enums/CardCategory;->getAllCategories()Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mCategories:Ljava/util/EnumSet;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/braze/ui/BrazeFeedFragment;->mCategories:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/braze/ui/BrazeFeedFragment;->mCategories:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/braze/enums/CardCategory;

    invoke-virtual {v2}, Lcom/braze/enums/CardCategory;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, "CARD_CATEGORY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/braze/ui/BrazeFeedFragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/braze/ui/BrazeFeedFragment;->mSkipCardImpressionsReset:Z

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0, p2}, Lcom/braze/ui/BrazeFeedFragment;->loadFragmentStateFromSavedInstanceState(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Lcom/braze/ui/BrazeFeedFragment;->mSkipCardImpressionsReset:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/braze/ui/BrazeFeedFragment;->mSkipCardImpressionsReset:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/braze/ui/BrazeFeedFragment;->mAdapter:Lcom/braze/ui/adapters/BrazeListAdapter;

    invoke-virtual {p1}, Lcom/braze/ui/adapters/BrazeListAdapter;->resetCardImpressionTracker()V

    sget-object p1, Lcom/braze/ui/BrazeFeedFragment;->TAG:Ljava/lang/String;

    const-string p2, "Resetting card impressions."

    invoke-static {p1, p2}, Lcom/braze/support/BrazeLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/braze/ui/BrazeFeedFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/braze/ui/BrazeFeedFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    sget v0, Lcom/braze/ui/R$layout;->com_braze_feed_header:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    sget v0, Lcom/braze/ui/R$layout;->com_braze_feed_footer:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/braze/ui/BrazeFeedFragment;->mFeedRootLayout:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/braze/ui/BrazeFeedFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/braze/ui/BrazeFeedFragment$$ExternalSyntheticLambda0;-><init>(Lcom/braze/ui/BrazeFeedFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p1, Lcom/braze/ui/BrazeFeedFragment$2;

    invoke-direct {p1, p0}, Lcom/braze/ui/BrazeFeedFragment$2;-><init>(Lcom/braze/ui/BrazeFeedFragment;)V

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object p1, p0, Lcom/braze/ui/BrazeFeedFragment;->mTransparentFullBoundsContainerView:Landroid/view/View;

    new-instance v0, Lcom/braze/ui/BrazeFeedFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/braze/ui/BrazeFeedFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/braze/ui/BrazeFeedFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/braze/Braze;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object p1

    iget-object v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mFeedUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;

    const-class v1, Lcom/braze/events/FeedUpdatedEvent;

    invoke-virtual {p1, v0, v1}, Lcom/braze/Braze;->removeSingleSubscription(Lcom/braze/events/IEventSubscriber;Ljava/lang/Class;)V

    new-instance p1, Lcom/braze/ui/BrazeFeedFragment$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2}, Lcom/braze/ui/BrazeFeedFragment$$ExternalSyntheticLambda2;-><init>(Lcom/braze/ui/BrazeFeedFragment;Landroid/widget/ListView;)V

    iput-object p1, p0, Lcom/braze/ui/BrazeFeedFragment;->mFeedUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;

    invoke-virtual {p0}, Lcom/braze/ui/BrazeFeedFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/braze/Braze;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object p1

    iget-object v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mFeedUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;

    invoke-virtual {p1, v0}, Lcom/braze/Braze;->subscribeToFeedUpdates(Lcom/braze/events/IEventSubscriber;)V

    iget-object p1, p0, Lcom/braze/ui/BrazeFeedFragment;->mAdapter:Lcom/braze/ui/adapters/BrazeListAdapter;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/braze/ui/BrazeFeedFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/braze/Braze;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object p1

    invoke-virtual {p1}, Lcom/braze/Braze;->requestFeedRefreshFromCache()V

    return-void
.end method

.method public setCategories(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/CardCategory;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lcom/braze/ui/BrazeFeedFragment;->TAG:Ljava/lang/String;

    const-string v0, "The categories passed into setCategories are null, BrazeFeedFragment is going to display all the cards in cache."

    invoke-static {p1, v0}, Lcom/braze/support/BrazeLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/braze/enums/CardCategory;->getAllCategories()Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/ui/BrazeFeedFragment;->mCategories:Ljava/util/EnumSet;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/braze/ui/BrazeFeedFragment;->TAG:Ljava/lang/String;

    const-string v0, "The categories set had no elements and have been ignored. Please pass a valid EnumSet of CardCategory."

    invoke-static {p1, v0}, Lcom/braze/support/BrazeLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/braze/ui/BrazeFeedFragment;->mCategories:Ljava/util/EnumSet;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iput-object p1, p0, Lcom/braze/ui/BrazeFeedFragment;->mCategories:Ljava/util/EnumSet;

    :goto_0
    invoke-virtual {p0}, Lcom/braze/ui/BrazeFeedFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/braze/Braze;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/braze/ui/BrazeFeedFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/braze/Braze;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object p1

    invoke-virtual {p1}, Lcom/braze/Braze;->requestFeedRefreshFromCache()V

    :cond_3
    return-void
.end method

.method public setCategory(Lcom/braze/enums/CardCategory;)V
    .locals 0

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/braze/ui/BrazeFeedFragment;->setCategories(Ljava/util/EnumSet;)V

    return-void
.end method

.method public setSortEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/braze/ui/BrazeFeedFragment;->mSortEnabled:Z

    return-void
.end method

.method public sortFeedCards(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/braze/models/cards/Card;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/braze/models/cards/Card;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/braze/ui/BrazeFeedFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/braze/ui/BrazeFeedFragment$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method
