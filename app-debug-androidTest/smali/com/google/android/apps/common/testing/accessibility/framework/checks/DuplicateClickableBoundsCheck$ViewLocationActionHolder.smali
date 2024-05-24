.class Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck$ViewLocationActionHolder;
.super Ljava/lang/Object;
.source "DuplicateClickableBoundsCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewLocationActionHolder"
.end annotation


# instance fields
.field private final clickable:Z

.field private final location:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

.field private final longClickable:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;ZZ)V
    .locals 0
    .param p1, "location"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .param p2, "clickable"    # Z
    .param p3, "longClickable"    # Z

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck$ViewLocationActionHolder;->location:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 293
    iput-boolean p2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck$ViewLocationActionHolder;->clickable:Z

    .line 294
    iput-boolean p3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck$ViewLocationActionHolder;->longClickable:Z

    .line 295
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 306
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 307
    return v0

    .line 310
    :cond_0
    instance-of v1, p1, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck$ViewLocationActionHolder;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 311
    return v2

    .line 314
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck$ViewLocationActionHolder;

    .line 315
    .local v1, "other":Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck$ViewLocationActionHolder;
    iget-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck$ViewLocationActionHolder;->location:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    iget-object v4, v1, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck$ViewLocationActionHolder;->location:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 316
    return v2

    .line 320
    :cond_2
    iget-boolean v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck$ViewLocationActionHolder;->clickable:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v1, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck$ViewLocationActionHolder;->clickable:Z

    if-nez v3, :cond_5

    :cond_3
    iget-boolean v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck$ViewLocationActionHolder;->longClickable:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v1, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck$ViewLocationActionHolder;->longClickable:Z

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    :cond_5
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck$ViewLocationActionHolder;->location:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->hashCode()I

    move-result v0

    return v0
.end method
