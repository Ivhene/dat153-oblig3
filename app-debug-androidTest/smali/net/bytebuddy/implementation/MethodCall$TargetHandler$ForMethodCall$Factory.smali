.class public Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Factory;
.super Ljava/lang/Object;
.source "MethodCall.java"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Factory"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final methodCall:Lnet/bytebuddy/implementation/MethodCall;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/MethodCall;)V
    .locals 0
    .param p1, "methodCall"    # Lnet/bytebuddy/implementation/MethodCall;

    .line 2665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2666
    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Factory;->methodCall:Lnet/bytebuddy/implementation/MethodCall;

    .line 2667
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Factory;->methodCall:Lnet/bytebuddy/implementation/MethodCall;

    check-cast p1, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Factory;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Factory;->methodCall:Lnet/bytebuddy/implementation/MethodCall;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/MethodCall;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Factory;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Factory;->methodCall:Lnet/bytebuddy/implementation/MethodCall;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/MethodCall;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public make(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/MethodCall$TargetHandler;
    .locals 4
    .param p1, "implementationTarget"    # Lnet/bytebuddy/implementation/Implementation$Target;

    .line 2680
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall;

    new-instance v1, Lnet/bytebuddy/implementation/MethodCall$Appender;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Factory;->methodCall:Lnet/bytebuddy/implementation/MethodCall;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;->IGNORING:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;

    invoke-direct {v1, v2, p1, v3}, Lnet/bytebuddy/implementation/MethodCall$Appender;-><init>(Lnet/bytebuddy/implementation/MethodCall;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall;-><init>(Lnet/bytebuddy/implementation/MethodCall$Appender;)V

    return-object v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 1
    .param p1, "instrumentedType"    # Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    .line 2673
    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Factory;->methodCall:Lnet/bytebuddy/implementation/MethodCall;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/MethodCall;->prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object v0

    return-object v0
.end method
