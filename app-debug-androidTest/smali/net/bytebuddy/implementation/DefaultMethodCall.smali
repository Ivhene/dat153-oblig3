.class public Lnet/bytebuddy/implementation/DefaultMethodCall;
.super Ljava/lang/Object;
.source "DefaultMethodCall.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/DefaultMethodCall$Appender;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final prioritizedInterfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p1, "prioritizedInterfaces":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/type/TypeDescription;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lnet/bytebuddy/implementation/DefaultMethodCall;->prioritizedInterfaces:Ljava/util/List;

    .line 65
    return-void
.end method

.method private filterRelevant(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/util/List;
    .locals 5
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/implementation/DefaultMethodCall;->prioritizedInterfaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    .local v0, "filtered":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/type/TypeDescription;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 168
    .local v1, "relevant":Ljava/util/Set;, "Ljava/util/Set<Lnet/bytebuddy/description/type/TypeDescription;>;"
    iget-object v2, p0, Lnet/bytebuddy/implementation/DefaultMethodCall;->prioritizedInterfaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    .line 169
    .local v3, "prioritizedInterface":Lnet/bytebuddy/description/type/TypeDescription;
    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 170
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v3    # "prioritizedInterface":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_0
    goto :goto_0

    .line 173
    :cond_1
    return-object v0
.end method

.method public static prioritize(Ljava/lang/Iterable;)Lnet/bytebuddy/implementation/Implementation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lnet/bytebuddy/implementation/Implementation;"
        }
    .end annotation

    .line 94
    .local p0, "prioritizedInterfaces":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Class<*>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 96
    .local v2, "prioritizedInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v2    # "prioritizedInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 98
    :cond_0
    new-instance v1, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lnet/bytebuddy/implementation/DefaultMethodCall;->prioritize(Ljava/util/Collection;)Lnet/bytebuddy/implementation/Implementation;

    move-result-object v1

    return-object v1
.end method

.method public static prioritize(Ljava/util/Collection;)Lnet/bytebuddy/implementation/Implementation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/implementation/Implementation;"
        }
    .end annotation

    .line 128
    .local p0, "prioritizedInterfaces":Ljava/util/Collection;, "Ljava/util/Collection<+Lnet/bytebuddy/description/type/TypeDescription;>;"
    new-instance v0, Lnet/bytebuddy/implementation/DefaultMethodCall;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/DefaultMethodCall;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static varargs prioritize([Ljava/lang/Class;)Lnet/bytebuddy/implementation/Implementation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/implementation/Implementation;"
        }
    .end annotation

    .line 79
    .local p0, "prioritizedInterface":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;-><init>([Ljava/lang/Class;)V

    invoke-static {v0}, Lnet/bytebuddy/implementation/DefaultMethodCall;->prioritize(Ljava/util/Collection;)Lnet/bytebuddy/implementation/Implementation;

    move-result-object v0

    return-object v0
.end method

.method public static varargs prioritize([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/Implementation;
    .locals 1
    .param p0, "prioritizedInterface"    # [Lnet/bytebuddy/description/type/TypeDescription;

    .line 113
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/DefaultMethodCall;->prioritize(Ljava/util/Collection;)Lnet/bytebuddy/implementation/Implementation;

    move-result-object v0

    return-object v0
.end method

.method public static unambiguousOnly()Lnet/bytebuddy/implementation/Implementation;
    .locals 2

    .line 141
    new-instance v0, Lnet/bytebuddy/implementation/DefaultMethodCall;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/DefaultMethodCall;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 2
    .param p1, "implementationTarget"    # Lnet/bytebuddy/implementation/Implementation$Target;

    .line 155
    new-instance v0, Lnet/bytebuddy/implementation/DefaultMethodCall$Appender;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/bytebuddy/implementation/DefaultMethodCall;->filterRelevant(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lnet/bytebuddy/implementation/DefaultMethodCall$Appender;-><init>(Lnet/bytebuddy/implementation/Implementation$Target;Ljava/util/List;)V

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/DefaultMethodCall;->prioritizedInterfaces:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/implementation/DefaultMethodCall;

    iget-object p1, p1, Lnet/bytebuddy/implementation/DefaultMethodCall;->prioritizedInterfaces:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/DefaultMethodCall;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/DefaultMethodCall;->prioritizedInterfaces:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0
    .param p1, "instrumentedType"    # Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    .line 148
    return-object p1
.end method
