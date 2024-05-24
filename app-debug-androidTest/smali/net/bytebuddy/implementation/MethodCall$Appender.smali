.class public Lnet/bytebuddy/implementation/MethodCall$Appender;
.super Ljava/lang/Object;
.source "MethodCall.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Appender"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field private final argumentProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ArgumentProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

.field private final methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;

.field private final methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator;

.field private final targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler;

.field private final terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

.field final synthetic this$0:Lnet/bytebuddy/implementation/MethodCall;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/MethodCall;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;)V
    .locals 4
    .param p1, "this$0"    # Lnet/bytebuddy/implementation/MethodCall;
    .param p2, "implementationTarget"    # Lnet/bytebuddy/implementation/Implementation$Target;
    .param p3, "terminationHandler"    # Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    .line 3515
    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/MethodCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3516
    iput-object p2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    .line 3517
    iget-object v0, p1, Lnet/bytebuddy/implementation/MethodCall;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;

    invoke-interface {p2}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;->make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodCall$MethodLocator;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator;

    .line 3518
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lnet/bytebuddy/implementation/MethodCall;->argumentLoaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->argumentProviders:Ljava/util/List;

    .line 3519
    iget-object v0, p1, Lnet/bytebuddy/implementation/MethodCall;->argumentLoaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;

    .line 3520
    .local v1, "factory":Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->argumentProviders:Ljava/util/List;

    invoke-interface {v1, p2}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;->make(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ArgumentProvider;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3521
    .end local v1    # "factory":Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;
    goto :goto_0

    .line 3522
    :cond_0
    iget-object v0, p1, Lnet/bytebuddy/implementation/MethodCall;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;

    invoke-interface {p2}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;->make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;

    .line 3523
    iget-object v0, p1, Lnet/bytebuddy/implementation/MethodCall;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;

    invoke-interface {v0, p2}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;->make(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/MethodCall$TargetHandler;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler;

    .line 3524
    iput-object p3, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    .line 3525
    return-void
.end method

.method static synthetic access$000(Lnet/bytebuddy/implementation/MethodCall$Appender;)Lnet/bytebuddy/implementation/MethodCall$TargetHandler;
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/implementation/MethodCall$Appender;

    .line 3477
    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 6
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;
    .param p3, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 3531
    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler;

    invoke-interface {v0, p3}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler;->resolve(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;

    move-result-object v0

    .line 3532
    .local v0, "targetHandler":Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    new-instance v2, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v4, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    invoke-interface {v4}, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;->prepare()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 3533
    invoke-virtual {p0, p3, v0}, Lnet/bytebuddy/implementation/MethodCall$Appender;->toInvokedMethod(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;)Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v4

    .line 3532
    invoke-virtual {p0, p3, v4, v0}, Lnet/bytebuddy/implementation/MethodCall$Appender;->toStackManipulation(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-direct {v2, v3}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 3534
    invoke-virtual {v2, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result v2

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;-><init>(II)V

    .line 3532
    return-object v1
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    check-cast p1, Lnet/bytebuddy/implementation/MethodCall$Appender;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->argumentProviders:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall$Appender;->argumentProviders:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall$Appender;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall$Appender;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/MethodCall;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/MethodCall;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/MethodCall;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/MethodCall$Appender;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->argumentProviders:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/MethodCall;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/MethodCall;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected toInvokedMethod(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;)Lnet/bytebuddy/description/method/MethodDescription;
    .locals 2
    .param p1, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p2, "targetHandler"    # Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;

    .line 3545
    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator;

    invoke-interface {p2}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;->getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lnet/bytebuddy/implementation/MethodCall$MethodLocator;->resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v0

    return-object v0
.end method

.method protected toStackManipulation(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 9
    .param p1, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p2, "invokedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p3, "targetHandler"    # Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;

    .line 3557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3558
    .local v0, "argumentLoaders":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader;>;"
    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->argumentProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ArgumentProvider;

    .line 3559
    .local v2, "argumentProvider":Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ArgumentProvider;
    invoke-interface {v2, p1, p2}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ArgumentProvider;->resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3560
    .end local v2    # "argumentProvider":Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ArgumentProvider;
    goto :goto_0

    .line 3561
    :cond_0
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    .line 3562
    .local v1, "parameters":Lnet/bytebuddy/description/method/ParameterList;, "Lnet/bytebuddy/description/method/ParameterList<*>;"
    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 3565
    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3566
    .local v2, "parameterIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lnet/bytebuddy/description/method/ParameterDescription;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3567
    .local v3, "argumentInstructions":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/implementation/bytecode/StackManipulation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader;

    .line 3568
    .local v5, "argumentLoader":Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader;
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/description/method/ParameterDescription;

    iget-object v7, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/MethodCall;

    iget-object v7, v7, Lnet/bytebuddy/implementation/MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v8, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/MethodCall;

    iget-object v8, v8, Lnet/bytebuddy/implementation/MethodCall;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {v5, v6, v7, v8}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader;->toStackManipulation(Lnet/bytebuddy/description/method/ParameterDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3569
    .end local v5    # "argumentLoader":Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader;
    goto :goto_1

    .line 3570
    :cond_1
    new-instance v4, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v5, 0x4

    new-array v5, v5, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v6, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/MethodCall;

    iget-object v6, v6, Lnet/bytebuddy/implementation/MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v7, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/MethodCall;

    iget-object v7, v7, Lnet/bytebuddy/implementation/MethodCall;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    .line 3571
    invoke-interface {p3, p2, v6, v7}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;->toStackManipulation(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    invoke-direct {v6, v3}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>(Ljava/util/List;)V

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget-object v6, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;

    iget-object v7, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    .line 3573
    invoke-interface {v6, p2, v7}, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;->toStackManipulation(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    iget-object v6, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    iget-object v7, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/MethodCall;

    iget-object v7, v7, Lnet/bytebuddy/implementation/MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v8, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/MethodCall;

    iget-object v8, v8, Lnet/bytebuddy/implementation/MethodCall;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    .line 3574
    invoke-interface {v6, p2, p1, v7, v8}, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;->toStackManipulation(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    invoke-direct {v4, v5}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 3570
    return-object v4

    .line 3563
    .end local v2    # "parameterIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lnet/bytebuddy/description/method/ParameterDescription;>;"
    .end local v3    # "argumentInstructions":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/implementation/bytecode/StackManipulation;>;"
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not accept "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " arguments"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
