.class Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult$1;
.super Ljava/lang/Object;
.source "AccessibilityEventCheckResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 100
    invoke-static {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;->access$000(Landroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;
    .locals 1
    .param p1, "size"    # I

    .line 105
    new-array v0, p1, [Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult$1;->newArray(I)[Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;

    move-result-object p1

    return-object p1
.end method
