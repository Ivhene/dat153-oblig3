.class public abstract Lcom/android/dx/rop/cst/CstLiteral32;
.super Lcom/android/dx/rop/cst/CstLiteralBits;
.source "CstLiteral32.java"


# instance fields
.field private final bits:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "bits"    # I

    .line 32
    invoke-direct {p0}, Lcom/android/dx/rop/cst/CstLiteralBits;-><init>()V

    .line 33
    iput p1, p0, Lcom/android/dx/rop/cst/CstLiteral32;->bits:I

    .line 34
    return-void
.end method


# virtual methods
.method protected compareTo0(Lcom/android/dx/rop/cst/Constant;)I
    .locals 2
    .param p1, "other"    # Lcom/android/dx/rop/cst/Constant;

    .line 53
    move-object v0, p1

    check-cast v0, Lcom/android/dx/rop/cst/CstLiteral32;

    iget v0, v0, Lcom/android/dx/rop/cst/CstLiteral32;->bits:I

    .line 55
    .local v0, "otherBits":I
    iget v1, p0, Lcom/android/dx/rop/cst/CstLiteral32;->bits:I

    if-ge v1, v0, :cond_0

    .line 56
    const/4 v1, -0x1

    return v1

    .line 57
    :cond_0
    if-le v1, v0, :cond_1

    .line 58
    const/4 v1, 0x1

    return v1

    .line 60
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 39
    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/dx/rop/cst/CstLiteral32;->bits:I

    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/cst/CstLiteral32;

    iget v1, v1, Lcom/android/dx/rop/cst/CstLiteral32;->bits:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0
.end method

.method public final fitsInInt()Z
    .locals 1

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public final getIntBits()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/android/dx/rop/cst/CstLiteral32;->bits:I

    return v0
.end method

.method public final getLongBits()J
    .locals 2

    .line 85
    iget v0, p0, Lcom/android/dx/rop/cst/CstLiteral32;->bits:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/android/dx/rop/cst/CstLiteral32;->bits:I

    return v0
.end method

.method public final isCategory2()Z
    .locals 1

    .line 67
    const/4 v0, 0x0

    return v0
.end method
