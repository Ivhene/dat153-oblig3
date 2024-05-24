.class Landroidx/test/espresso/contrib/ViewPagerActions$6;
.super Ljava/lang/Object;
.source "ViewPagerActions.java"

# interfaces
.implements Landroidx/test/espresso/action/CoordinatesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/contrib/ViewPagerActions;->clickBetweenTwoTitles(Ljava/lang/String;Ljava/lang/String;)Landroidx/test/espresso/ViewAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$title1:Ljava/lang/String;

.field final synthetic val$title2:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$title1",
            "val$title2"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Landroidx/test/espresso/contrib/ViewPagerActions$6;->val$title1:Ljava/lang/String;

    iput-object p2, p0, Landroidx/test/espresso/contrib/ViewPagerActions$6;->val$title2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateCoordinates(Landroid/view/View;)[F
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 161
    move-object v0, p1

    check-cast v0, Landroidx/viewpager/widget/PagerTitleStrip;

    .line 164
    .local v0, "pagerStrip":Landroidx/viewpager/widget/PagerTitleStrip;
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 165
    .local v2, "viewScreenPosition":[I
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/PagerTitleStrip;->getLocationOnScreen([I)V

    .line 168
    const/4 v3, 0x0

    .local v3, "title1Left":I
    const/4 v4, 0x0

    .local v4, "title1Right":I
    const/4 v5, 0x0

    .local v5, "title2Left":I
    const/4 v6, 0x0

    .line 169
    .local v6, "title2Right":I
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerTitleStrip;->getChildCount()I

    move-result v7

    .line 170
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 171
    invoke-virtual {v0, v8}, Landroidx/viewpager/widget/PagerTitleStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 172
    .local v9, "child":Landroid/view/View;
    instance-of v10, v9, Landroid/widget/TextView;

    if-eqz v10, :cond_1

    .line 173
    move-object v10, v9

    check-cast v10, Landroid/widget/TextView;

    .line 174
    .local v10, "textViewChild":Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    .line 175
    .local v11, "childText":Ljava/lang/CharSequence;
    iget-object v12, p0, Landroidx/test/espresso/contrib/ViewPagerActions$6;->val$title1:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 176
    invoke-virtual {v10}, Landroid/widget/TextView;->getLeft()I

    move-result v3

    .line 177
    invoke-virtual {v10}, Landroid/widget/TextView;->getRight()I

    move-result v4

    goto :goto_1

    .line 178
    :cond_0
    iget-object v12, p0, Landroidx/test/espresso/contrib/ViewPagerActions$6;->val$title2:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 179
    invoke-virtual {v10}, Landroid/widget/TextView;->getLeft()I

    move-result v5

    .line 180
    invoke-virtual {v10}, Landroid/widget/TextView;->getRight()I

    move-result v6

    .line 170
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "textViewChild":Landroid/widget/TextView;
    .end local v11    # "childText":Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 185
    .end local v8    # "i":I
    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge v4, v5, :cond_3

    .line 187
    new-array v10, v1, [F

    aget v11, v2, v8

    add-int v12, v4, v5

    div-int/2addr v12, v1

    add-int/2addr v11, v12

    int-to-float v11, v11

    aput v11, v10, v8

    aget v8, v2, v9

    .line 189
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerTitleStrip;->getHeight()I

    move-result v11

    div-int/2addr v11, v1

    add-int/2addr v8, v11

    int-to-float v1, v8

    aput v1, v10, v9

    .line 187
    return-object v10

    .line 195
    :cond_3
    new-array v10, v1, [F

    aget v11, v2, v8

    add-int v12, v6, v3

    div-int/2addr v12, v1

    add-int/2addr v11, v12

    int-to-float v11, v11

    aput v11, v10, v8

    aget v8, v2, v9

    .line 197
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerTitleStrip;->getHeight()I

    move-result v11

    div-int/2addr v11, v1

    add-int/2addr v8, v11

    int-to-float v1, v8

    aput v1, v10, v9

    .line 195
    return-object v10
.end method
