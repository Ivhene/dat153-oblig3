.class public Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher$Appender;
.super Ljava/lang/Object;
.source "Implementation.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Appender"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field private final implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

.field final synthetic this$0:Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;Lnet/bytebuddy/implementation/Implementation$Target;)V
    .locals 0
    .param p1, "this$0"    # Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;
    .param p2, "implementationTarget"    # Lnet/bytebuddy/implementation/Implementation$Target;

    .line 2045
    iput-object p1, p0, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher$Appender;->this$0:Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2046
    iput-object p2, p0, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    .line 2047
    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 4
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;
    .param p3, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 2053
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher$Appender;->this$0:Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;

    invoke-static {v1}, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;->access$400(Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;)Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-interface {v1, v2, p3}, Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;->apply(Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    .line 2054
    invoke-interface {v1, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v1

    .line 2055
    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result v1

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v2

    iget-object v3, p0, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher$Appender;->this$0:Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;

    invoke-static {v3}, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;->access$500(Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;-><init>(II)V

    .line 2053
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    check-cast p1, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher$Appender;

    iget-object v3, p1, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher$Appender;->this$0:Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;

    iget-object p1, p1, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher$Appender;->this$0:Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher$Appender;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher$Appender;->this$0:Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
