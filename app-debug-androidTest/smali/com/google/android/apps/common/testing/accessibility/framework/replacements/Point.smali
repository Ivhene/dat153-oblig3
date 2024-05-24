.class public final Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->x:I

    .line 27
    iput p2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->y:I

    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 42
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 43
    return v0

    .line 46
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 50
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;

    .line 51
    .local v2, "point":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;
    iget v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->x:I

    iget v4, v2, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->x:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->y:I

    iget v4, v2, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->y:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 47
    .end local v2    # "point":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;
    :cond_3
    :goto_1
    return v1
.end method

.method public final getX()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->x:I

    return v0
.end method

.method public final getY()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->y:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 56
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->x:I

    .line 57
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->y:I

    add-int/2addr v1, v2

    .line 58
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 64
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Point("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
