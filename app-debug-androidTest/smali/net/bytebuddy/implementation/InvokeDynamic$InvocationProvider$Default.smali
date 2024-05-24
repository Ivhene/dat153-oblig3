.class public Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;
.super Ljava/lang/Object;
.source "InvokeDynamic.java"

# interfaces
.implements Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default$Target;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final argumentProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final nameProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;

.field private final returnTypeProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .line 2315
    sget-object v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForInterceptedMethod;->INSTANCE:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForInterceptedMethod;

    sget-object v1, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForInterceptedMethod;->INSTANCE:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForInterceptedMethod;

    sget-object v2, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForInterceptedMethodInstanceAndParameters;->INSTANCE:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForInterceptedMethodInstanceAndParameters;

    .line 2317
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2315
    invoke-direct {p0, v0, v1, v2}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;-><init>(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;Ljava/util/List;)V

    .line 2318
    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;Ljava/util/List;)V
    .locals 0
    .param p1, "nameProvider"    # Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;
    .param p2, "returnTypeProvider"    # Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;",
            "Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;",
            ">;)V"
        }
    .end annotation

    .line 2329
    .local p3, "argumentProviders":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2330
    iput-object p1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->nameProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;

    .line 2331
    iput-object p2, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->returnTypeProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;

    .line 2332
    iput-object p3, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->argumentProviders:Ljava/util/List;

    .line 2333
    return-void
.end method


# virtual methods
.method public appendArgument(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;
    .locals 4
    .param p1, "argumentProvider"    # Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;

    .line 2358
    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->nameProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->returnTypeProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;

    iget-object v3, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->argumentProviders:Ljava/util/List;

    .line 2360
    invoke-static {v3, p1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;-><init>(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;Ljava/util/List;)V

    .line 2358
    return-object v0
.end method

.method public appendArguments(Ljava/util/List;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;",
            ">;)",
            "Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;"
        }
    .end annotation

    .line 2349
    .local p1, "argumentProviders":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;>;"
    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->nameProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->returnTypeProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;

    iget-object v3, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->argumentProviders:Ljava/util/List;

    .line 2351
    invoke-static {v3, p1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;-><init>(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;Ljava/util/List;)V

    .line 2349
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->nameProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;

    check-cast p1, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;

    iget-object v3, p1, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->nameProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->returnTypeProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;

    iget-object v3, p1, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->returnTypeProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->argumentProviders:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->argumentProviders:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->nameProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->returnTypeProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->argumentProviders:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public make(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default$Target;
    .locals 4
    .param p1, "methodDescription"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 2339
    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default$Target;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->nameProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;

    invoke-interface {v1, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;->resolve(Lnet/bytebuddy/description/method/MethodDescription;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->returnTypeProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;

    .line 2340
    invoke-interface {v2, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;->resolve(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->argumentProviders:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default$Target;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Lnet/bytebuddy/description/method/MethodDescription;)V

    .line 2339
    return-object v0
.end method

.method public bridge synthetic make(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Target;
    .locals 0

    .line 2292
    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->make(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default$Target;

    move-result-object p1

    return-object p1
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 2
    .param p1, "instrumentedType"    # Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    .line 2394
    iget-object v0, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->argumentProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;

    .line 2395
    .local v1, "argumentProvider":Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;
    invoke-interface {v1, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;->prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    .line 2396
    .end local v1    # "argumentProvider":Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;
    goto :goto_0

    .line 2397
    :cond_0
    return-object p1
.end method

.method public withNameProvider(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;
    .locals 3
    .param p1, "nameProvider"    # Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;

    .line 2376
    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->returnTypeProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->argumentProviders:Ljava/util/List;

    invoke-direct {v0, p1, v1, v2}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;-><init>(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;Ljava/util/List;)V

    return-object v0
.end method

.method public withReturnTypeProvider(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;
    .locals 3
    .param p1, "returnTypeProvider"    # Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;

    .line 2385
    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->nameProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->argumentProviders:Ljava/util/List;

    invoke-direct {v0, v1, p1, v2}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;-><init>(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;Ljava/util/List;)V

    return-object v0
.end method

.method public withoutArguments()Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;
    .locals 4

    .line 2367
    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->nameProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;->returnTypeProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;

    .line 2369
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$Default;-><init>(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;Ljava/util/List;)V

    .line 2367
    return-object v0
.end method
