.class public Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
.super Ljava/lang/Object;
.source "StackManipulation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Size"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field public static final ZERO:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;


# instance fields
.field private final maximalSize:I

.field private final sizeImpact:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 107
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;-><init>(II)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "sizeImpact"    # I
    .param p2, "maximalSize"    # I

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput p1, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->sizeImpact:I

    .line 131
    iput p2, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->maximalSize:I

    .line 132
    return-void
.end method

.method private aggregate(II)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 4
    .param p1, "sizeChange"    # I
    .param p2, "interimMaximalSize"    # I

    .line 172
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    iget v1, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->sizeImpact:I

    add-int v2, v1, p1

    iget v3, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->maximalSize:I

    add-int/2addr v1, p2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public aggregate(Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 2
    .param p1, "other"    # Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    .line 160
    iget v0, p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->sizeImpact:I

    iget v1, p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->maximalSize:I

    invoke-direct {p0, v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->aggregate(II)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->sizeImpact:I

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    iget v3, p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->sizeImpact:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->maximalSize:I

    iget p1, p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->maximalSize:I

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getMaximalSize()I
    .locals 1

    .line 149
    iget v0, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->maximalSize:I

    return v0
.end method

.method public getSizeImpact()I
    .locals 1

    .line 140
    iget v0, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->sizeImpact:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->sizeImpact:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->maximalSize:I

    add-int/2addr v0, v1

    return v0
.end method
