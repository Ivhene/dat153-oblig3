.class public Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;
.super Ljava/lang/Object;
.source "TypeProxy.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/auxiliary/TypeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MethodCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field private final methodAccessorFactory:Lnet/bytebuddy/implementation/MethodAccessorFactory;

.field final synthetic this$0:Lnet/bytebuddy/implementation/auxiliary/TypeProxy;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/auxiliary/TypeProxy;Lnet/bytebuddy/implementation/MethodAccessorFactory;)V
    .locals 0
    .param p1, "this$0"    # Lnet/bytebuddy/implementation/auxiliary/TypeProxy;
    .param p2, "methodAccessorFactory"    # Lnet/bytebuddy/implementation/MethodAccessorFactory;

    .line 617
    iput-object p1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;->this$0:Lnet/bytebuddy/implementation/auxiliary/TypeProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-object p2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;->methodAccessorFactory:Lnet/bytebuddy/implementation/MethodAccessorFactory;

    .line 619
    return-void
.end method

.method static synthetic access$500(Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;)Lnet/bytebuddy/implementation/MethodAccessorFactory;
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;

    .line 605
    iget-object v0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;->methodAccessorFactory:Lnet/bytebuddy/implementation/MethodAccessorFactory;

    return-object v0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 2
    .param p1, "implementationTarget"    # Lnet/bytebuddy/implementation/Implementation$Target;

    .line 634
    new-instance v0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall$Appender;-><init>(Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;Lnet/bytebuddy/description/type/TypeDescription;)V

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;->methodAccessorFactory:Lnet/bytebuddy/implementation/MethodAccessorFactory;

    check-cast p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;

    iget-object v3, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;->methodAccessorFactory:Lnet/bytebuddy/implementation/MethodAccessorFactory;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;->this$0:Lnet/bytebuddy/implementation/auxiliary/TypeProxy;

    iget-object p1, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;->this$0:Lnet/bytebuddy/implementation/auxiliary/TypeProxy;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;->methodAccessorFactory:Lnet/bytebuddy/implementation/MethodAccessorFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;->this$0:Lnet/bytebuddy/implementation/auxiliary/TypeProxy;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 4
    .param p1, "instrumentedType"    # Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    .line 625
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$Token;

    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;->this$0:Lnet/bytebuddy/implementation/auxiliary/TypeProxy;

    .line 627
    invoke-static {v1}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->access$200(Lnet/bytebuddy/implementation/auxiliary/TypeProxy;)Lnet/bytebuddy/implementation/Implementation$Target;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    const-string v2, "target"

    const/16 v3, 0x41

    invoke-direct {v0, v2, v3, v1}, Lnet/bytebuddy/description/field/FieldDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)V

    .line 625
    invoke-interface {p1, v0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->withField(Lnet/bytebuddy/description/field/FieldDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object v0

    return-object v0
.end method
