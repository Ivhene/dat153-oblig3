.class public Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;
.super Ljava/lang/Object;
.source "ByteCodeAppender.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compound"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final byteCodeAppenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;",
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
            "Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;",
            ">;)V"
        }
    .end annotation

    .line 137
    .local p1, "byteCodeAppenders":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;->byteCodeAppenders:Ljava/util/List;

    .line 139
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    .line 140
    .local v1, "byteCodeAppender":Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    instance-of v2, v1, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;

    if-eqz v2, :cond_0

    .line 141
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;->byteCodeAppenders:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;

    iget-object v3, v3, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;->byteCodeAppenders:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 143
    :cond_0
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;->byteCodeAppenders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v1    # "byteCodeAppender":Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    :goto_1
    goto :goto_0

    .line 146
    :cond_1
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)V
    .locals 1
    .param p1, "byteCodeAppender"    # [Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    .line 129
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;-><init>(Ljava/util/List;)V

    .line 130
    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 4
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;
    .param p3, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 154
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    const/4 v1, 0x0

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;-><init>(II)V

    .line 155
    .local v0, "size":Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;->byteCodeAppenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    .line 156
    .local v2, "byteCodeAppender":Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    invoke-interface {v2, p1, p2, p3}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->merge(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    move-result-object v0

    .line 157
    .end local v2    # "byteCodeAppender":Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    goto :goto_0

    .line 158
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;->byteCodeAppenders:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;->byteCodeAppenders:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;->byteCodeAppenders:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
