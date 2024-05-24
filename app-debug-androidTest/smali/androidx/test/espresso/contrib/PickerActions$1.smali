.class Landroidx/test/espresso/contrib/PickerActions$1;
.super Ljava/lang/Object;
.source "PickerActions.java"

# interfaces
.implements Landroidx/test/espresso/ViewAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/contrib/PickerActions;->setDate(III)Landroidx/test/espresso/ViewAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dayOfMonth:I

.field final synthetic val$normalizedMonthOfYear:I

.field final synthetic val$year:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$year",
            "val$normalizedMonthOfYear",
            "val$dayOfMonth"
        }
    .end annotation

    .line 48
    iput p1, p0, Landroidx/test/espresso/contrib/PickerActions$1;->val$year:I

    iput p2, p0, Landroidx/test/espresso/contrib/PickerActions$1;->val$normalizedMonthOfYear:I

    iput p3, p0, Landroidx/test/espresso/contrib/PickerActions$1;->val$dayOfMonth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConstraints()Lorg/hamcrest/Matcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 64
    const-class v0, Landroid/widget/DatePicker;

    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->isAssignableFrom(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isDisplayed()Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "set date"

    return-object v0
.end method

.method public perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V
    .locals 4
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

    .line 52
    move-object v0, p2

    check-cast v0, Landroid/widget/DatePicker;

    .line 53
    .local v0, "datePicker":Landroid/widget/DatePicker;
    iget v1, p0, Landroidx/test/espresso/contrib/PickerActions$1;->val$year:I

    iget v2, p0, Landroidx/test/espresso/contrib/PickerActions$1;->val$normalizedMonthOfYear:I

    iget v3, p0, Landroidx/test/espresso/contrib/PickerActions$1;->val$dayOfMonth:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 54
    return-void
.end method
