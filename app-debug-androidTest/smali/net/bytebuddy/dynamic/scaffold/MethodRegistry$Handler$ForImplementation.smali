.class public Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForImplementation;
.super Ljava/lang/Object;
.source "MethodRegistry.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForImplementation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForImplementation$Compiled;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final implementation:Lnet/bytebuddy/implementation/Implementation;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/Implementation;)V
    .locals 0
    .param p1, "implementation"    # Lnet/bytebuddy/implementation/Implementation;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForImplementation;->implementation:Lnet/bytebuddy/implementation/Implementation;

    .line 220
    return-void
.end method


# virtual methods
.method public bridge synthetic compile(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;
    .locals 0

    .line 205
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForImplementation;->compile(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForImplementation$Compiled;

    move-result-object p1

    return-object p1
.end method

.method public compile(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForImplementation$Compiled;
    .locals 2
    .param p1, "implementationTarget"    # Lnet/bytebuddy/implementation/Implementation$Target;

    .line 233
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForImplementation$Compiled;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForImplementation;->implementation:Lnet/bytebuddy/implementation/Implementation;

    invoke-interface {v1, p1}, Lnet/bytebuddy/implementation/Implementation;->appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForImplementation$Compiled;-><init>(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)V

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForImplementation;->implementation:Lnet/bytebuddy/implementation/Implementation;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForImplementation;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForImplementation;->implementation:Lnet/bytebuddy/implementation/Implementation;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForImplementation;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForImplementation;->implementation:Lnet/bytebuddy/implementation/Implementation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 1
    .param p1, "instrumentedType"    # Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    .line 226
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForImplementation;->implementation:Lnet/bytebuddy/implementation/Implementation;

    invoke-interface {v0, p1}, Lnet/bytebuddy/implementation/Implementation;->prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object v0

    return-object v0
.end method
