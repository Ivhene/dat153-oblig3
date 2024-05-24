.class public Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;
.super Ljava/lang/Object;
.source "MethodCall.java"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Resolved"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final appender:Lnet/bytebuddy/implementation/MethodCall$Appender;

.field private final instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

.field private final methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

.field private final targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/MethodCall$Appender;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;)V
    .locals 0
    .param p1, "appender"    # Lnet/bytebuddy/implementation/MethodCall$Appender;
    .param p2, "methodDescription"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p3, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p4, "targetHandler"    # Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;

    .line 2615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2616
    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->appender:Lnet/bytebuddy/implementation/MethodCall$Appender;

    .line 2617
    iput-object p2, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    .line 2618
    iput-object p3, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 2619
    iput-object p4, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;

    .line 2620
    return-void
.end method


# virtual methods
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->appender:Lnet/bytebuddy/implementation/MethodCall$Appender;

    check-cast p1, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->appender:Lnet/bytebuddy/implementation/MethodCall$Appender;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/MethodCall$Appender;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 2626
    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    .line 2627
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    .line 2628
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 2626
    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->appender:Lnet/bytebuddy/implementation/MethodCall$Appender;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/MethodCall$Appender;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toStackManipulation(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 7
    .param p1, "invokedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p2, "assigner"    # Lnet/bytebuddy/implementation/bytecode/assign/Assigner;
    .param p3, "typing"    # Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    .line 2635
    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    .line 2636
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    .line 2637
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    .line 2635
    invoke-interface {p2, v0, v1, p3}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    .line 2638
    .local v0, "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2639
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot invoke "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    .line 2640
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    .line 2641
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2643
    :cond_2
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v2, 0x2

    new-array v2, v2, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->appender:Lnet/bytebuddy/implementation/MethodCall$Appender;

    iget-object v4, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v6, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;

    invoke-virtual {v3, v4, v5, v6}, Lnet/bytebuddy/implementation/MethodCall$Appender;->toStackManipulation(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v1
.end method
