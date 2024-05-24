.class public Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;
.super Ljava/lang/Object;
.source "ViewHierarchyElementAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final accessibilityClassName:Ljava/lang/CharSequence;

.field private accessibilityTraversalAfterId:Ljava/lang/Long;

.field private accessibilityTraversalBeforeId:Ljava/lang/Long;

.field private actionList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid;",
            ">;"
        }
    .end annotation
.end field

.field private final backgroundDrawableColor:Ljava/lang/Integer;

.field private final boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

.field private final canScrollBackward:Ljava/lang/Boolean;

.field private final canScrollForward:Ljava/lang/Boolean;

.field private final checkable:Ljava/lang/Boolean;

.field private final checked:Ljava/lang/Boolean;

.field private childIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final className:Ljava/lang/CharSequence;

.field private final clickable:Z

.field private final contentDescription:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

.field private final drawingOrder:Ljava/lang/Integer;

.field private final editable:Ljava/lang/Boolean;

.field private final enabled:Z

.field private final focusable:Z

.field private final hasTouchDelegate:Ljava/lang/Boolean;

.field private final hintText:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

.field private final hintTextColor:Ljava/lang/Integer;

.field private final id:I

.field private final importantForAccessibility:Z

.field private labeledById:Ljava/lang/Long;

.field private final layoutParams:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;

.field private final longClickable:Z

.field private final nonclippedHeight:Ljava/lang/Integer;

.field private final nonclippedWidth:Ljava/lang/Integer;

.field private final packageName:Ljava/lang/CharSequence;

.field private final parentId:Ljava/lang/Integer;

.field private final resourceName:Ljava/lang/String;

.field private final scrollable:Ljava/lang/Boolean;

.field private final superclassViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final text:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

.field private final textCharacterLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final textColor:Ljava/lang/Integer;

.field private final textSize:Ljava/lang/Float;

.field private final touchDelegateBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final typefaceStyle:Ljava/lang/Integer;

.field private final visibleToUser:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/os/Parcel;)V
    .locals 9
    .param p1, "id"    # I
    .param p2, "parent"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .param p3, "in"    # Landroid/os/Parcel;

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->childIds:Ljava/util/List;

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->superclassViews:Ljava/util/List;

    .line 615
    iput p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->id:I

    .line 616
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->parentId:Ljava/lang/Integer;

    .line 618
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->packageName:Ljava/lang/CharSequence;

    .line 619
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->className:Ljava/lang/CharSequence;

    .line 620
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->resourceName:Ljava/lang/String;

    .line 621
    nop

    .line 622
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readSpannableStringFromParcel(Landroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->contentDescription:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    .line 623
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readSpannableStringFromParcel(Landroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->text:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    .line 624
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->importantForAccessibility:Z

    .line 625
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableBoolean(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->visibleToUser:Ljava/lang/Boolean;

    .line 626
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->clickable:Z

    .line 627
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    move v1, v3

    :goto_5
    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->longClickable:Z

    .line 628
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    move v1, v3

    :goto_6
    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->focusable:Z

    .line 629
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableBoolean(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->editable:Ljava/lang/Boolean;

    .line 630
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableBoolean(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->scrollable:Ljava/lang/Boolean;

    .line 631
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableBoolean(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->canScrollForward:Ljava/lang/Boolean;

    .line 632
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableBoolean(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->canScrollBackward:Ljava/lang/Boolean;

    .line 633
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableBoolean(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->checkable:Ljava/lang/Boolean;

    .line 634
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableBoolean(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->checked:Ljava/lang/Boolean;

    .line 635
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableBoolean(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->hasTouchDelegate:Ljava/lang/Boolean;

    .line 636
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 637
    .local v1, "touchDelegateBoundsSize":I
    if-lez v1, :cond_8

    .line 638
    new-instance v4, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v4}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 639
    .local v4, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7
    if-ge v5, v1, :cond_7

    .line 640
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readRectFromParcel(Landroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 639
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 642
    .end local v5    # "i":I
    :cond_7
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->touchDelegateBounds:Ljava/util/List;

    .line 643
    .end local v4    # "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;>;"
    goto :goto_8

    .line 644
    :cond_8
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->touchDelegateBounds:Ljava/util/List;

    .line 646
    :goto_8
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    move v3, v2

    :cond_9
    iput-boolean v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->enabled:Z

    .line 647
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_a

    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readRectFromParcel(Landroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v3

    goto :goto_9

    :cond_a
    move-object v3, v0

    :goto_9
    iput-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 648
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableInteger(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->nonclippedHeight:Ljava/lang/Integer;

    .line 649
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableInteger(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->nonclippedWidth:Ljava/lang/Integer;

    .line 650
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableFloat(Landroid/os/Parcel;)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->textSize:Ljava/lang/Float;

    .line 651
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableInteger(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->textColor:Ljava/lang/Integer;

    .line 652
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableInteger(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->backgroundDrawableColor:Ljava/lang/Integer;

    .line 653
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableInteger(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->typefaceStyle:Ljava/lang/Integer;

    .line 654
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableLong(Landroid/os/Parcel;)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->labeledById:Ljava/lang/Long;

    .line 655
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->accessibilityClassName:Ljava/lang/CharSequence;

    .line 656
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableLong(Landroid/os/Parcel;)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->accessibilityTraversalBeforeId:Ljava/lang/Long;

    .line 657
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableLong(Landroid/os/Parcel;)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->accessibilityTraversalAfterId:Ljava/lang/Long;

    .line 659
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 660
    .local v3, "superclassViewsSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a
    if-ge v4, v3, :cond_b

    .line 661
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->superclassViews:Ljava/util/List;

    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 663
    .end local v4    # "i":I
    :cond_b
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableInteger(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->drawingOrder:Ljava/lang/Integer;

    .line 665
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 666
    .local v4, "actionsSize":I
    new-instance v5, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v5}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 668
    .local v5, "actionBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_b
    if-ge v6, v4, :cond_c

    .line 669
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid;->newBuilder(Landroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$Builder;->build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 668
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 671
    .end local v6    # "i":I
    :cond_c
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->actionList:Lcom/google/common/collect/ImmutableList;

    .line 672
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v2, :cond_d

    new-instance v6, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;

    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;-><init>(II)V

    goto :goto_c

    :cond_d
    move-object v6, v0

    :goto_c
    iput-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->layoutParams:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;

    .line 673
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v2, :cond_e

    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readSpannableStringFromParcel(Landroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v0

    :cond_e
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->hintText:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    .line 674
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableInteger(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->hintTextColor:Ljava/lang/Integer;

    .line 675
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readRectList(Landroid/os/Parcel;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->textCharacterLocations:Ljava/util/List;

    .line 676
    return-void
.end method

.method constructor <init>(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/View;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "parent"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .param p3, "fromView"    # Landroid/view/View;

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->childIds:Ljava/util/List;

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->superclassViews:Ljava/util/List;

    .line 543
    iput p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->id:I

    .line 544
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->parentId:Ljava/lang/Integer;

    .line 546
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->drawingOrder:Ljava/lang/Integer;

    .line 549
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->isScrollContainer()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->scrollable:Ljava/lang/Boolean;

    .line 552
    nop

    .line 553
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->access$600()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    .line 554
    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    .line 555
    :cond_2
    move-object v1, v0

    :goto_2
    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->backgroundDrawableColor:Ljava/lang/Integer;

    .line 558
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->isVisibleToUser(Landroid/view/View;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->visibleToUser:Ljava/lang/Boolean;

    .line 559
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->className:Ljava/lang/CharSequence;

    .line 560
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->accessibilityClassName:Ljava/lang/CharSequence;

    .line 561
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->packageName:Ljava/lang/CharSequence;

    .line 562
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->getResourceNameForView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->resourceName:Ljava/lang/String;

    .line 563
    invoke-virtual {p3}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringAndroid;->valueOf(Ljava/lang/CharSequence;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringAndroid;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->contentDescription:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    .line 564
    invoke-virtual {p3}, Landroid/view/View;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->enabled:Z

    .line 565
    instance-of v1, p3, Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 566
    move-object v1, p3

    check-cast v1, Landroid/widget/TextView;

    .line 567
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 568
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringAndroid;->valueOf(Ljava/lang/CharSequence;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringAndroid;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->text:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    .line 569
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->textSize:Ljava/lang/Float;

    .line 570
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->textColor:Ljava/lang/Integer;

    .line 571
    nop

    .line 572
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object v3, v0

    :goto_3
    iput-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->typefaceStyle:Ljava/lang/Integer;

    .line 573
    invoke-virtual {v1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringAndroid;->valueOf(Ljava/lang/CharSequence;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringAndroid;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->hintText:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    .line 574
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentHintTextColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->hintTextColor:Ljava/lang/Integer;

    .line 575
    .end local v1    # "textView":Landroid/widget/TextView;
    .end local v2    # "text":Ljava/lang/CharSequence;
    goto :goto_4

    .line 576
    :cond_4
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->text:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    .line 577
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->textSize:Ljava/lang/Float;

    .line 578
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->textColor:Ljava/lang/Integer;

    .line 579
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->typefaceStyle:Ljava/lang/Integer;

    .line 580
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->hintText:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    .line 581
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->hintTextColor:Ljava/lang/Integer;

    .line 584
    :goto_4
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->isImportantForAccessibility(Landroid/view/View;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->importantForAccessibility:Z

    .line 585
    invoke-virtual {p3}, Landroid/view/View;->isClickable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->clickable:Z

    .line 586
    invoke-virtual {p3}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->longClickable:Z

    .line 587
    invoke-virtual {p3}, Landroid/view/View;->isFocusable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->focusable:Z

    .line 588
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/ViewAccessibilityUtils;->isViewEditable(Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->editable:Ljava/lang/Boolean;

    .line 589
    nop

    .line 590
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->access$700()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    invoke-virtual {p3, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p3, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    move v1, v3

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->canScrollForward:Ljava/lang/Boolean;

    .line 591
    nop

    .line 592
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->access$700()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, -0x1

    invoke-virtual {p3, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p3, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    move v1, v3

    goto :goto_6

    :cond_8
    move v1, v2

    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->canScrollBackward:Ljava/lang/Boolean;

    .line 593
    instance-of v1, p3, Lcom/google/android/material/button/MaterialButton;

    if-eqz v1, :cond_9

    .line 595
    move-object v1, p3

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->isCheckable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->checkable:Ljava/lang/Boolean;

    goto :goto_7

    .line 597
    :cond_9
    instance-of v1, p3, Landroid/widget/Checkable;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->checkable:Ljava/lang/Boolean;

    .line 599
    :goto_7
    instance-of v1, p3, Landroid/widget/Checkable;

    if-eqz v1, :cond_a

    move-object v1, p3

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_8

    :cond_a
    move-object v1, v0

    :goto_8
    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->checked:Ljava/lang/Boolean;

    .line 600
    invoke-virtual {p3}, Landroid/view/View;->getTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object v1

    if-eqz v1, :cond_b

    move v2, v3

    :cond_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->hasTouchDelegate:Ljava/lang/Boolean;

    .line 601
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->touchDelegateBounds:Ljava/util/List;

    .line 602
    invoke-static {p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->getBoundsInScreen(Landroid/view/View;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 603
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->nonclippedHeight:Ljava/lang/Integer;

    .line 604
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->nonclippedWidth:Ljava/lang/Integer;

    .line 605
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->actionList:Lcom/google/common/collect/ImmutableList;

    .line 607
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 608
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    nop

    .line 609
    if-nez v1, :cond_c

    goto :goto_9

    :cond_c
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;-><init>(II)V

    :goto_9
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->layoutParams:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;

    .line 610
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->textCharacterLocations:Ljava/util/List;

    .line 611
    return-void
.end method

.method constructor <init>(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "parent"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .param p3, "fromInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p4, "extraDataExtractor"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->childIds:Ljava/util/List;

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->superclassViews:Ljava/util/List;

    .line 465
    iput p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->id:I

    .line 466
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->parentId:Ljava/lang/Integer;

    .line 469
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->resourceName:Ljava/lang/String;

    .line 470
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->editable:Ljava/lang/Boolean;

    .line 473
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->access$100()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v0

    :goto_3
    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->visibleToUser:Ljava/lang/Boolean;

    .line 476
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->access$200()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 477
    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 479
    .local v1, "actionBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid;>;"
    nop

    .line 481
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder$$ExternalSyntheticLambda0;-><init>()V

    .line 480
    invoke-static {v2, v3}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v2

    .line 479
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 483
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->actionList:Lcom/google/common/collect/ImmutableList;

    .line 487
    .end local v1    # "actionBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid;>;"
    :cond_4
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->access$300()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getDrawingOrder()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4

    :cond_5
    move-object v1, v0

    :goto_4
    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->drawingOrder:Ljava/lang/Integer;

    .line 490
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->access$400()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTouchDelegateInfo()Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_6

    :cond_7
    move-object v1, v0

    :goto_6
    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->hasTouchDelegate:Ljava/lang/Boolean;

    .line 493
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->className:Ljava/lang/CharSequence;

    .line 494
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->packageName:Ljava/lang/CharSequence;

    .line 495
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->accessibilityClassName:Ljava/lang/CharSequence;

    .line 496
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringAndroid;->valueOf(Ljava/lang/CharSequence;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringAndroid;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->contentDescription:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    .line 497
    nop

    .line 498
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->access$500()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isShowingHintText()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 499
    move-object v1, v0

    goto :goto_7

    .line 500
    :cond_8
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringAndroid;->valueOf(Ljava/lang/CharSequence;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringAndroid;

    move-result-object v1

    :goto_7
    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->text:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    .line 502
    iput-boolean v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->importantForAccessibility:Z

    .line 503
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->clickable:Z

    .line 504
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->longClickable:Z

    .line 505
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->focusable:Z

    .line 506
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->scrollable:Ljava/lang/Boolean;

    .line 507
    nop

    .line 508
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->access$200()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 509
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v1

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_8

    .line 510
    :cond_9
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v1

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_a

    move v1, v3

    goto :goto_8

    :cond_a
    move v1, v2

    .line 508
    :goto_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->canScrollForward:Ljava/lang/Boolean;

    .line 511
    nop

    .line 512
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->access$200()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 513
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_9

    .line 514
    :cond_b
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v1

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_c

    move v2, v3

    .line 512
    :cond_c
    :goto_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->canScrollBackward:Ljava/lang/Boolean;

    .line 515
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->checkable:Ljava/lang/Boolean;

    .line 516
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->checked:Ljava/lang/Boolean;

    .line 517
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->touchDelegateBounds:Ljava/util/List;

    .line 518
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 519
    .local v1, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 520
    new-instance v2, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 521
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->nonclippedHeight:Ljava/lang/Integer;

    .line 522
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->nonclippedWidth:Ljava/lang/Integer;

    .line 523
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->textSize:Ljava/lang/Float;

    .line 524
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->textColor:Ljava/lang/Integer;

    .line 525
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->backgroundDrawableColor:Ljava/lang/Integer;

    .line 526
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->typefaceStyle:Ljava/lang/Integer;

    .line 527
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->enabled:Z

    .line 529
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->layoutParams:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;

    .line 530
    nop

    .line 531
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->access$500()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isShowingHintText()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 532
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getHintText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringAndroid;->valueOf(Ljava/lang/CharSequence;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableStringAndroid;

    move-result-object v2

    goto :goto_a

    .line 533
    :cond_d
    move-object v2, v0

    :goto_a
    iput-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->hintText:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    .line 534
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->hintTextColor:Ljava/lang/Integer;

    .line 535
    nop

    .line 536
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->access$500()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p4, :cond_e

    .line 537
    invoke-virtual {p4, p3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityNodeInfoExtraDataExtractor;->getTextCharacterLocations(Landroid/view/accessibility/AccessibilityNodeInfo;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_b

    .line 538
    :cond_e
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->textCharacterLocations:Ljava/util/List;

    .line 539
    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 5
    .param p1, "proto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->childIds:Ljava/util/List;

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->superclassViews:Ljava/util/List;

    .line 680
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getId()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->id:I

    .line 681
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getParentId()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getParentId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->parentId:Ljava/lang/Integer;

    .line 682
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getChildIdsCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 683
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getChildIdsCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->childIds:Ljava/util/List;

    .line 684
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getChildIdsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 687
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasPackageName()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->packageName:Ljava/lang/CharSequence;

    .line 688
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasClassName()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->className:Ljava/lang/CharSequence;

    .line 689
    nop

    .line 690
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasAccessibilityClassName()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getAccessibilityClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v2

    :goto_3
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->accessibilityClassName:Ljava/lang/CharSequence;

    .line 691
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasResourceName()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getResourceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    move-object v0, v2

    :goto_4
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->resourceName:Ljava/lang/String;

    .line 692
    nop

    .line 693
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasContentDescription()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getContentDescription()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)V

    goto :goto_5

    :cond_6
    move-object v0, v2

    :goto_5
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->contentDescription:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    .line 694
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasText()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getText()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)V

    goto :goto_6

    :cond_7
    move-object v0, v2

    :goto_6
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->text:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    .line 695
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getImportantForAccessibility()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->importantForAccessibility:Z

    .line 696
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getVisibleToUser()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_7

    :cond_8
    move-object v0, v2

    :goto_7
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->visibleToUser:Ljava/lang/Boolean;

    .line 697
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getClickable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->clickable:Z

    .line 698
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getLongClickable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->longClickable:Z

    .line 699
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getFocusable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->focusable:Z

    .line 700
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasEditable()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getEditable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_8

    :cond_9
    move-object v0, v2

    :goto_8
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->editable:Ljava/lang/Boolean;

    .line 701
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasScrollable()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getScrollable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_9

    :cond_a
    move-object v0, v2

    :goto_9
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->scrollable:Ljava/lang/Boolean;

    .line 702
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasCanScrollForward()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getCanScrollForward()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_a

    :cond_b
    move-object v0, v2

    :goto_a
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->canScrollForward:Ljava/lang/Boolean;

    .line 703
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasCanScrollBackward()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getCanScrollBackward()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_b

    :cond_c
    move-object v0, v2

    :goto_b
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->canScrollBackward:Ljava/lang/Boolean;

    .line 704
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasCheckable()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getCheckable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c

    :cond_d
    move-object v0, v2

    :goto_c
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->checkable:Ljava/lang/Boolean;

    .line 705
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_d

    :cond_e
    move-object v0, v2

    :goto_d
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->checked:Ljava/lang/Boolean;

    .line 706
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasHasTouchDelegate()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getHasTouchDelegate()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_e

    :cond_f
    move-object v0, v2

    :goto_e
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->hasTouchDelegate:Ljava/lang/Boolean;

    .line 707
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getTouchDelegateBoundsCount()I

    move-result v0

    if-lez v0, :cond_11

    .line 708
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 709
    .local v0, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getTouchDelegateBoundsCount()I

    move-result v3

    if-ge v1, v3, :cond_10

    .line 710
    new-instance v3, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    invoke-virtual {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getTouchDelegateBounds(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 709
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 712
    .end local v1    # "i":I
    :cond_10
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->touchDelegateBounds:Ljava/util/List;

    .line 713
    .end local v0    # "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;>;"
    goto :goto_10

    .line 714
    :cond_11
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->touchDelegateBounds:Ljava/util/List;

    .line 716
    :goto_10
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasBoundsInScreen()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V

    goto :goto_11

    :cond_12
    move-object v0, v2

    :goto_11
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 717
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasNonclippedHeight()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getNonclippedHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_12

    :cond_13
    move-object v0, v2

    :goto_12
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->nonclippedHeight:Ljava/lang/Integer;

    .line 718
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasNonclippedWidth()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getNonclippedWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_13

    :cond_14
    move-object v0, v2

    :goto_13
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->nonclippedWidth:Ljava/lang/Integer;

    .line 719
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasTextSize()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getTextSize()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_14

    :cond_15
    move-object v0, v2

    :goto_14
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->textSize:Ljava/lang/Float;

    .line 720
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasTextColor()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getTextColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_15

    :cond_16
    move-object v0, v2

    :goto_15
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->textColor:Ljava/lang/Integer;

    .line 721
    nop

    .line 722
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasBackgroundDrawableColor()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getBackgroundDrawableColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_16

    :cond_17
    move-object v0, v2

    :goto_16
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->backgroundDrawableColor:Ljava/lang/Integer;

    .line 723
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasTypefaceStyle()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getTypefaceStyle()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_17

    :cond_18
    move-object v0, v2

    :goto_17
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->typefaceStyle:Ljava/lang/Integer;

    .line 724
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->enabled:Z

    .line 725
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasLabeledById()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getLabeledById()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_18

    :cond_19
    move-object v0, v2

    :goto_18
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->labeledById:Ljava/lang/Long;

    .line 726
    nop

    .line 727
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasAccessibilityTraversalBeforeId()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 728
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getAccessibilityTraversalBeforeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_19

    .line 729
    :cond_1a
    move-object v0, v2

    :goto_19
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->accessibilityTraversalBeforeId:Ljava/lang/Long;

    .line 730
    nop

    .line 731
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasAccessibilityTraversalAfterId()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 732
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getAccessibilityTraversalAfterId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1a

    .line 733
    :cond_1b
    move-object v0, v2

    :goto_1a
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->accessibilityTraversalAfterId:Ljava/lang/Long;

    .line 734
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->superclassViews:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getSuperclassesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 735
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasDrawingOrder()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getDrawingOrder()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1b

    :cond_1c
    move-object v0, v2

    :goto_1b
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->drawingOrder:Ljava/lang/Integer;

    .line 737
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 738
    .local v0, "actionsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1c
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getActionsCount()I

    move-result v3

    if-ge v1, v3, :cond_1d

    .line 739
    invoke-virtual {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getActions(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid;->newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$Builder;->build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 738
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 741
    .end local v1    # "i":I
    :cond_1d
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->actionList:Lcom/google/common/collect/ImmutableList;

    .line 742
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasLayoutParams()Z

    move-result v1

    if-eqz v1, :cond_1e

    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getLayoutParams()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;)V

    goto :goto_1d

    :cond_1e
    move-object v1, v2

    :goto_1d
    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->layoutParams:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;

    .line 743
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasHintText()Z

    move-result v1

    if-eqz v1, :cond_1f

    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getHintText()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)V

    goto :goto_1e

    :cond_1f
    move-object v1, v2

    :goto_1e
    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->hintText:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    .line 744
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasHintTextColor()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getHintTextColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_20
    iput-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->hintTextColor:Ljava/lang/Integer;

    .line 745
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getTextCharacterLocationsCount()I

    move-result v1

    if-lez v1, :cond_22

    .line 746
    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 747
    .local v1, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getTextCharacterLocationsCount()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 748
    new-instance v3, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    invoke-virtual {p1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getTextCharacterLocations(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 747
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 750
    .end local v2    # "i":I
    :cond_21
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->textCharacterLocations:Ljava/util/List;

    .line 751
    .end local v1    # "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;>;"
    goto :goto_20

    .line 752
    :cond_22
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->textCharacterLocations:Ljava/util/List;

    .line 754
    :goto_20
    return-void
.end method

.method private static getBoundsInScreen(Landroid/view/View;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .locals 10
    .param p0, "fromView"    # Landroid/view/View;

    .line 808
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 809
    .local v0, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 810
    const/4 v1, 0x0

    return-object v1

    .line 813
    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 814
    .local v2, "locationOnScreen":[I
    new-array v1, v1, [I

    .line 815
    .local v1, "locationInWindow":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 816
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 819
    const/4 v3, 0x0

    aget v4, v2, v3

    aget v3, v1, v3

    sub-int/2addr v4, v3

    .line 820
    .local v4, "xOffset":I
    const/4 v3, 0x1

    aget v5, v2, v3

    aget v3, v1, v3

    sub-int/2addr v5, v3

    .line 821
    .local v5, "yOffset":I
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 822
    new-instance v3, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;-><init>(IIII)V

    return-object v3
.end method

.method static synthetic lambda$new$0(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid;
    .locals 1
    .param p0, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 482
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid;->newBuilder(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$Builder;->build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .locals 45

    .line 757
    move-object/from16 v0, p0

    new-instance v43, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-object/from16 v1, v43

    iget v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->id:I

    iget-object v3, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->parentId:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->childIds:Ljava/util/List;

    iget-object v5, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->packageName:Ljava/lang/CharSequence;

    iget-object v6, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->className:Ljava/lang/CharSequence;

    iget-object v7, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->accessibilityClassName:Ljava/lang/CharSequence;

    iget-object v8, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->resourceName:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->contentDescription:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    iget-object v10, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->text:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    iget-boolean v11, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->importantForAccessibility:Z

    iget-object v12, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->visibleToUser:Ljava/lang/Boolean;

    iget-boolean v13, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->clickable:Z

    iget-boolean v14, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->longClickable:Z

    iget-boolean v15, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->focusable:Z

    move-object/from16 v44, v1

    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->editable:Ljava/lang/Boolean;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->scrollable:Ljava/lang/Boolean;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->canScrollForward:Ljava/lang/Boolean;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->canScrollBackward:Ljava/lang/Boolean;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->checkable:Ljava/lang/Boolean;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->checked:Ljava/lang/Boolean;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->hasTouchDelegate:Ljava/lang/Boolean;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->touchDelegateBounds:Ljava/util/List;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->nonclippedHeight:Ljava/lang/Integer;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->nonclippedWidth:Ljava/lang/Integer;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->textSize:Ljava/lang/Float;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->textColor:Ljava/lang/Integer;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->backgroundDrawableColor:Ljava/lang/Integer;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->typefaceStyle:Ljava/lang/Integer;

    move-object/from16 v30, v1

    iget-boolean v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->enabled:Z

    move/from16 v31, v1

    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->labeledById:Ljava/lang/Long;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->accessibilityTraversalBeforeId:Ljava/lang/Long;

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->accessibilityTraversalAfterId:Ljava/lang/Long;

    move-object/from16 v34, v1

    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->drawingOrder:Ljava/lang/Integer;

    move-object/from16 v35, v1

    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->superclassViews:Ljava/util/List;

    move-object/from16 v36, v1

    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->actionList:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v37, v1

    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->layoutParams:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;

    move-object/from16 v38, v1

    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->hintText:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-object/from16 v39, v1

    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->hintTextColor:Ljava/lang/Integer;

    move-object/from16 v40, v1

    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->textCharacterLocations:Ljava/util/List;

    move-object/from16 v41, v1

    const/16 v42, 0x0

    move-object/from16 v1, v44

    invoke-direct/range {v1 .. v42}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;-><init>(ILjava/lang/Integer;Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;ZLjava/lang/Boolean;ZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;Ljava/lang/Integer;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$1;)V

    return-object v43
.end method
