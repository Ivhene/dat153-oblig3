.class public final Landroidx/test/espresso/contrib/RecyclerViewActions;
.super Ljava/lang/Object;
.source "RecyclerViewActions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/contrib/RecyclerViewActions$MatchedItem;,
        Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToPositionViewAction;,
        Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;,
        Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemAtPositionViewAction;,
        Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;,
        Landroidx/test/espresso/contrib/RecyclerViewActions$PositionableRecyclerViewAction;
    }
.end annotation


# static fields
.field private static final NO_POSITION:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method static synthetic access$400(Landroidx/recyclerview/widget/RecyclerView;Lorg/hamcrest/Matcher;I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p1, "x1"    # Lorg/hamcrest/Matcher;
    .param p2, "x2"    # I

    .line 52
    invoke-static {p0, p1, p2}, Landroidx/test/espresso/contrib/RecyclerViewActions;->itemsMatching(Landroidx/recyclerview/widget/RecyclerView;Lorg/hamcrest/Matcher;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static actionOnHolderItem(Lorg/hamcrest/Matcher;Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/contrib/RecyclerViewActions$PositionableRecyclerViewAction;
    .locals 2
    .param p1, "viewAction"    # Landroidx/test/espresso/ViewAction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "viewHolderMatcher",
            "viewAction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VH:",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TVH;>;",
            "Landroidx/test/espresso/ViewAction;",
            ")",
            "Landroidx/test/espresso/contrib/RecyclerViewActions$PositionableRecyclerViewAction;"
        }
    .end annotation

    .line 169
    .local p0, "viewHolderMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TVH;>;"
    new-instance v0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/ViewAction;Landroidx/test/espresso/contrib/RecyclerViewActions$1;)V

    return-object v0
.end method

.method public static actionOnItem(Lorg/hamcrest/Matcher;Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/contrib/RecyclerViewActions$PositionableRecyclerViewAction;
    .locals 3
    .param p1, "viewAction"    # Landroidx/test/espresso/ViewAction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "itemViewMatcher",
            "viewAction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VH:",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/test/espresso/ViewAction;",
            ")",
            "Landroidx/test/espresso/contrib/RecyclerViewActions$PositionableRecyclerViewAction;"
        }
    .end annotation

    .line 146
    .local p0, "itemViewMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<Landroid/view/View;>;"
    invoke-static {p0}, Landroidx/test/espresso/contrib/RecyclerViewActions;->viewHolderMatcher(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    .line 147
    .local v0, "viewHolderMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TVH;>;"
    new-instance v1, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/ViewAction;Landroidx/test/espresso/contrib/RecyclerViewActions$1;)V

    return-object v1
.end method

.method public static actionOnItemAtPosition(ILandroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;
    .locals 2
    .param p0, "position"    # I
    .param p1, "viewAction"    # Landroidx/test/espresso/ViewAction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "position",
            "viewAction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VH:",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">(I",
            "Landroidx/test/espresso/ViewAction;",
            ")",
            "Landroidx/test/espresso/ViewAction;"
        }
    .end annotation

    .line 253
    new-instance v0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemAtPositionViewAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemAtPositionViewAction;-><init>(ILandroidx/test/espresso/ViewAction;Landroidx/test/espresso/contrib/RecyclerViewActions$1;)V

    return-object v0
.end method

.method private static itemsMatching(Landroidx/recyclerview/widget/RecyclerView;Lorg/hamcrest/Matcher;I)Ljava/util/List;
    .locals 10
    .param p0, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "recyclerView",
            "viewHolderMatcher",
            "max"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TVH;VH:",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lorg/hamcrest/Matcher<",
            "TVH;>;I)",
            "Ljava/util/List<",
            "Landroidx/test/espresso/contrib/RecyclerViewActions$MatchedItem;",
            ">;"
        }
    .end annotation

    .line 431
    .local p1, "viewHolderMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TVH;>;"
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 432
    .local v0, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<TT;>;"
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 433
    .local v1, "viewHolderCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TVH;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v2, "matchedItems":Ljava/util/List;, "Ljava/util/List<Landroidx/test/espresso/contrib/RecyclerViewActions$MatchedItem;>;"
    const/4 v3, 0x0

    .local v3, "position":I
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 435
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v4

    .line 436
    .local v4, "itemType":I
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 438
    .local v5, "cachedViewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    if-nez v5, :cond_0

    .line 439
    invoke-virtual {v0, p0, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 440
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 443
    :cond_0
    invoke-virtual {v0, v5, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 444
    invoke-interface {p1, v5}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 445
    new-instance v6, Landroidx/test/espresso/contrib/RecyclerViewActions$MatchedItem;

    iget-object v7, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x3a

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "\n\n*** Matched ViewHolder item at position: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ***"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 448
    const/4 v9, 0x0

    invoke-static {v7, v9, v8, v9}, Landroidx/test/espresso/util/HumanReadables;->getViewHierarchyErrorMessage(Landroid/view/View;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v7, v9}, Landroidx/test/espresso/contrib/RecyclerViewActions$MatchedItem;-><init>(ILjava/lang/String;Landroidx/test/espresso/contrib/RecyclerViewActions$1;)V

    .line 445
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 454
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, p2, :cond_2

    .line 455
    goto :goto_1

    .line 458
    :cond_1
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 434
    .end local v4    # "itemType":I
    .end local v5    # "cachedViewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 461
    .end local v3    # "position":I
    :cond_3
    :goto_1
    return-object v2
.end method

.method public static scrollTo(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/contrib/RecyclerViewActions$PositionableRecyclerViewAction;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "itemViewMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VH:",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;)",
            "Landroidx/test/espresso/contrib/RecyclerViewActions$PositionableRecyclerViewAction;"
        }
    .end annotation

    .line 117
    .local p0, "itemViewMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<Landroid/view/View;>;"
    invoke-static {p0}, Landroidx/test/espresso/contrib/RecyclerViewActions;->viewHolderMatcher(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    .line 118
    .local v0, "viewHolderMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TVH;>;"
    new-instance v1, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/contrib/RecyclerViewActions$1;)V

    return-object v1
.end method

.method public static scrollToHolder(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/contrib/RecyclerViewActions$PositionableRecyclerViewAction;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "viewHolderMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VH:",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TVH;>;)",
            "Landroidx/test/espresso/contrib/RecyclerViewActions$PositionableRecyclerViewAction;"
        }
    .end annotation

    .line 98
    .local p0, "viewHolderMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TVH;>;"
    new-instance v0, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/contrib/RecyclerViewActions$1;)V

    return-object v0
.end method

.method public static scrollToPosition(I)Landroidx/test/espresso/ViewAction;
    .locals 2
    .param p0, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VH:",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">(I)",
            "Landroidx/test/espresso/ViewAction;"
        }
    .end annotation

    .line 127
    new-instance v0, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToPositionViewAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToPositionViewAction;-><init>(ILandroidx/test/espresso/contrib/RecyclerViewActions$1;)V

    return-object v0
.end method

.method private static viewHolderMatcher(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "itemViewMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VH:",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "TVH;>;"
        }
    .end annotation

    .line 491
    .local p0, "itemViewMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<Landroid/view/View;>;"
    new-instance v0, Landroidx/test/espresso/contrib/RecyclerViewActions$1;

    invoke-direct {v0, p0}, Landroidx/test/espresso/contrib/RecyclerViewActions$1;-><init>(Lorg/hamcrest/Matcher;)V

    return-object v0
.end method
