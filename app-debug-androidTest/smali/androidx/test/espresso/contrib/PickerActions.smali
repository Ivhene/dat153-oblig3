.class public final Landroidx/test/espresso/contrib/PickerActions;
.super Ljava/lang/Object;
.source "PickerActions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static setDate(III)Landroidx/test/espresso/ViewAction;
    .locals 2
    .param p0, "year"    # I
    .param p1, "monthOfYear"    # I
    .param p2, "dayOfMonth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "year",
            "monthOfYear",
            "dayOfMonth"
        }
    .end annotation

    .line 46
    add-int/lit8 v0, p1, -0x1

    .line 48
    .local v0, "normalizedMonthOfYear":I
    new-instance v1, Landroidx/test/espresso/contrib/PickerActions$1;

    invoke-direct {v1, p0, v0, p2}, Landroidx/test/espresso/contrib/PickerActions$1;-><init>(III)V

    return-object v1
.end method

.method public static setTime(II)Landroidx/test/espresso/ViewAction;
    .locals 1
    .param p0, "hours"    # I
    .param p1, "minutes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "hours",
            "minutes"
        }
    .end annotation

    .line 72
    new-instance v0, Landroidx/test/espresso/contrib/PickerActions$2;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/contrib/PickerActions$2;-><init>(II)V

    return-object v0
.end method
