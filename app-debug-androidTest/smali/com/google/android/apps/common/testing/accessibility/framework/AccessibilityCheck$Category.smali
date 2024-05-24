.class public final enum Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;
.super Ljava/lang/Enum;
.source "AccessibilityCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

.field public static final enum CONTENT_LABELING:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

.field public static final enum IMPLEMENTATION:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

.field public static final enum LOW_CONTRAST:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

.field public static final enum TOUCH_TARGET_SIZE:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;


# direct methods
.method private static synthetic $values()[Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;
    .locals 4

    .line 36
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;->CONTENT_LABELING:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;->TOUCH_TARGET_SIZE:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;->LOW_CONTRAST:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    sget-object v3, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;->IMPLEMENTATION:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    const-string v1, "CONTENT_LABELING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;->CONTENT_LABELING:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    .line 42
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    const-string v1, "TOUCH_TARGET_SIZE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;->TOUCH_TARGET_SIZE:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    .line 45
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    const-string v1, "LOW_CONTRAST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;->LOW_CONTRAST:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    .line 51
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    const-string v1, "IMPLEMENTATION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;->IMPLEMENTATION:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    .line 36
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;->$values()[Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;->$VALUES:[Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    const-class v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;
    .locals 1

    .line 36
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;->$VALUES:[Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    invoke-virtual {v0}, [Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck$Category;

    return-object v0
.end method
