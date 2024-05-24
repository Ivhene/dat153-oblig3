.class public Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Loader;
.super Ljava/lang/Object;
.source "ArrayAccess.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Loader"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field final synthetic this$0:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;)V
    .locals 0
    .param p1, "this$0"    # Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    .line 174
    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Loader;->this$0:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 4
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;

    .line 187
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Loader;->this$0:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->access$000(Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 188
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Loader;->this$0:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->access$100(Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;)Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;-><init>(II)V

    invoke-virtual {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->aggregate(Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Loader;->this$0:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Loader;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Loader;->this$0:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Loader;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Loader;->this$0:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 180
    const/4 v0, 0x1

    return v0
.end method
