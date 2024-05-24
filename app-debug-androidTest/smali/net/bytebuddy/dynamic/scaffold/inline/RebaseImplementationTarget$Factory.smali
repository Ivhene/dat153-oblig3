.class public Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$Factory;
.super Ljava/lang/Object;
.source "RebaseImplementationTarget.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation$Target$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final methodRebaseResolver:Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;)V
    .locals 0
    .param p1, "methodRebaseResolver"    # Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$Factory;->methodRebaseResolver:Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;

    .line 246
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$Factory;->methodRebaseResolver:Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$Factory;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$Factory;->methodRebaseResolver:Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$Factory;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$Factory;->methodRebaseResolver:Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public make(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/implementation/Implementation$Target;
    .locals 1
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "methodGraph"    # Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;
    .param p3, "classFileVersion"    # Lnet/bytebuddy/ClassFileVersion;

    .line 252
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$Factory;->methodRebaseResolver:Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;

    invoke-static {p1, p2, p3, v0}, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget;->of(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;)Lnet/bytebuddy/implementation/Implementation$Target;

    move-result-object v0

    return-object v0
.end method
