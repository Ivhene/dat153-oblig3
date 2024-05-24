.class public final Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;
.super Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;
.source "AccessibilityEventCheckResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final event:Landroid/view/accessibility/AccessibilityEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult$1;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Ljava/lang/CharSequence;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p2, "type"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;",
            "Ljava/lang/CharSequence;",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ")V"
        }
    .end annotation

    .line 41
    .local p1, "checkClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Ljava/lang/CharSequence;)V

    .line 42
    invoke-static {p4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;->event:Landroid/view/accessibility/AccessibilityEvent;

    .line 43
    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;
    .locals 1
    .param p0, "x0"    # Landroid/os/Parcel;

    .line 28
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;->readFromParcel(Landroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;

    move-result-object v0

    return-object v0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;
    .locals 8
    .param p0, "in"    # Landroid/os/Parcel;

    .line 68
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    .local v0, "checkClassName":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 72
    .local v1, "uncheckedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    const-class v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 73
    move-object v2, v1

    .line 81
    .end local v1    # "uncheckedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v2, "checkClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;>;"
    nop

    .line 84
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 85
    .local v1, "typeInt":I
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->values()[Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    move-result-object v3

    aget-object v3, v3, v1

    .line 88
    .local v3, "type":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 91
    .local v4, "message":Ljava/lang/CharSequence;
    sget-object v5, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityEvent;

    .line 93
    .local v5, "event":Landroid/view/accessibility/AccessibilityEvent;
    new-instance v6, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    invoke-direct {v6, v2, v7, v4, v5}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Ljava/lang/CharSequence;Landroid/view/accessibility/AccessibilityEvent;)V

    return-object v6

    .line 75
    .end local v2    # "checkClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;>;"
    .end local v3    # "type":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;
    .end local v4    # "message":Ljava/lang/CharSequence;
    .end local v5    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .local v1, "uncheckedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Class: %1$s is not assignable from AccessibilityCheck"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    .line 76
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "checkClassName":Ljava/lang/String;
    .end local p0    # "in":Landroid/os/Parcel;
    throw v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    .end local v1    # "uncheckedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "checkClassName":Ljava/lang/String;
    .restart local p0    # "in":Landroid/os/Parcel;
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    .line 80
    const-string v4, "Failed to resolve check class: %1$s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getEvent()Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;->event:Landroid/view/accessibility/AccessibilityEvent;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;->getSourceCheckClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;->getType()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;->getMessage(Ljava/util/Locale;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheckResult;->event:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v0, p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 63
    return-void
.end method
