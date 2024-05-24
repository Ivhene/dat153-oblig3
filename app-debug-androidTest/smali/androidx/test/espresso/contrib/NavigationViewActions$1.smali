.class Landroidx/test/espresso/contrib/NavigationViewActions$1;
.super Ljava/lang/Object;
.source "NavigationViewActions.java"

# interfaces
.implements Landroidx/test/espresso/ViewAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/contrib/NavigationViewActions;->navigateTo(I)Landroidx/test/espresso/ViewAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$menuItemId:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$menuItemId"
        }
    .end annotation

    .line 78
    iput p1, p0, Landroidx/test/espresso/contrib/NavigationViewActions$1;->val$menuItemId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getErrorMessage(Landroid/view/Menu;Landroid/view/View;)Ljava/lang/String;
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "menu",
            "view"
        }
    .end annotation

    .line 95
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "newLine":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Menu item was not found, available menu items:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 99
    .local v1, "errorMessage":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "position":I
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 100
    const-string v3, "[MenuItem] position="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 102
    .local v3, "menuItem":Landroid/view/MenuItem;
    if-eqz v3, :cond_2

    .line 103
    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 104
    .local v4, "itemTitle":Ljava/lang/CharSequence;
    if-eqz v4, :cond_0

    .line 105
    const-string v5, ", title="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 107
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 108
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    .line 110
    .local v5, "itemId":I
    :try_start_0
    const-string v6, ", id="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, "menuItemResourceName":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    nop

    .end local v6    # "menuItemResourceName":Ljava/lang/String;
    goto :goto_1

    .line 113
    :catch_0
    move-exception v6

    .line 114
    .local v6, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string v7, "not found"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .end local v5    # "itemId":I
    .end local v6    # "nfe":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .end local v3    # "menuItem":Landroid/view/MenuItem;
    .end local v4    # "itemTitle":Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v2    # "position":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getConstraints()Lorg/hamcrest/Matcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 130
    const-class v0, Lcom/google/android/material/navigation/NavigationView;

    .line 131
    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->isAssignableFrom(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v0

    sget-object v1, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->VISIBLE:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    .line 132
    invoke-static {v1}, Landroidx/test/espresso/matcher/ViewMatchers;->withEffectiveVisibility(Landroidx/test/espresso/matcher/ViewMatchers$Visibility;)Lorg/hamcrest/Matcher;

    move-result-object v1

    .line 133
    const/16 v2, 0x5a

    invoke-static {v2}, Landroidx/test/espresso/matcher/ViewMatchers;->isDisplayingAtLeast(I)Lorg/hamcrest/Matcher;

    move-result-object v2

    .line 130
    invoke-static {v0, v1, v2}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 125
    const-string v0, "click on menu item with id"

    return-object v0
.end method

.method public perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V
    .locals 5
    .param p1, "uiController"    # Landroidx/test/espresso/UiController;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uiController",
            "view"
        }
    .end annotation

    .line 82
    move-object v0, p2

    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    .line 83
    .local v0, "navigationView":Lcom/google/android/material/navigation/NavigationView;
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 84
    .local v1, "menu":Landroid/view/Menu;
    iget v2, p0, Landroidx/test/espresso/contrib/NavigationViewActions$1;->val$menuItemId:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 91
    iget v2, p0, Landroidx/test/espresso/contrib/NavigationViewActions$1;->val$menuItemId:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/Menu;->performIdentifierAction(II)Z

    .line 92
    return-void

    .line 85
    :cond_0
    new-instance v2, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {v2}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 86
    invoke-virtual {p0}, Landroidx/test/espresso/contrib/NavigationViewActions$1;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v2

    .line 87
    invoke-static {p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    .line 88
    invoke-direct {p0, v1, p2}, Landroidx/test/espresso/contrib/NavigationViewActions$1;->getErrorMessage(Landroid/view/Menu;Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object v2

    throw v2
.end method
