.class public Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;
.super Ljava/lang/Object;
.source "StackManipulation.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compound"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final stackManipulations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ">;)V"
        }
    .end annotation

    .line 201
    .local p1, "stackManipulations":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/implementation/bytecode/StackManipulation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->stackManipulations:Ljava/util/List;

    .line 203
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 204
    .local v1, "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    instance-of v2, v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->stackManipulations:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    iget-object v3, v3, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->stackManipulations:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 206
    :cond_0
    instance-of v2, v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    if-nez v2, :cond_1

    .line 207
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->stackManipulations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    .end local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    :cond_1
    :goto_1
    goto :goto_0

    .line 210
    :cond_2
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V
    .locals 1
    .param p1, "stackManipulation"    # [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 193
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>(Ljava/util/List;)V

    .line 194
    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 4
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;

    .line 228
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    .line 229
    .local v0, "size":Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->stackManipulations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 230
    .local v2, "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    invoke-interface {v2, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->aggregate(Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    .line 231
    .end local v2    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    goto :goto_0

    .line 232
    :cond_0
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->stackManipulations:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->stackManipulations:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->stackManipulations:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 3

    .line 216
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->stackManipulations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 217
    .local v1, "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    invoke-interface {v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    const/4 v0, 0x0

    return v0

    .line 220
    .end local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    :cond_0
    goto :goto_0

    .line 221
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
