.class public Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;
.super Lnet/bytebuddy/dynamic/DynamicType$Default;
.source "DynamicType.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/DynamicType$Unloaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/DynamicType$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unloaded"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/dynamic/DynamicType$Default;",
        "Lnet/bytebuddy/dynamic/DynamicType$Unloaded<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final typeResolutionStrategy:Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;[BLnet/bytebuddy/implementation/LoadedTypeInitializer;Ljava/util/List;Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;)V
    .locals 0
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "binaryRepresentation"    # [B
    .param p3, "loadedTypeInitializer"    # Lnet/bytebuddy/implementation/LoadedTypeInitializer;
    .param p5, "typeResolutionStrategy"    # Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B",
            "Lnet/bytebuddy/implementation/LoadedTypeInitializer;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;",
            "Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;",
            ")V"
        }
    .end annotation

    .line 6126
    .local p0, "this":Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;, "Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded<TT;>;"
    .local p4, "auxiliaryTypes":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/dynamic/DynamicType;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/dynamic/DynamicType$Default;-><init>(Lnet/bytebuddy/description/type/TypeDescription;[BLnet/bytebuddy/implementation/LoadedTypeInitializer;Ljava/util/List;)V

    .line 6127
    iput-object p5, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->typeResolutionStrategy:Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;

    .line 6128
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Default;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->typeResolutionStrategy:Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;

    check-cast p1, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->typeResolutionStrategy:Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/dynamic/DynamicType$Default;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->typeResolutionStrategy:Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public include(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Unloaded<",
            "TT;>;"
        }
    .end annotation

    .line 6161
    .local p0, "this":Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;, "Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded<TT;>;"
    .local p1, "dynamicType":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/dynamic/DynamicType;>;"
    new-instance v6, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->binaryRepresentation:[B

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v0, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->auxiliaryTypes:Ljava/util/List;

    .line 6164
    invoke-static {v0, p1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->typeResolutionStrategy:Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;-><init>(Lnet/bytebuddy/description/type/TypeDescription;[BLnet/bytebuddy/implementation/LoadedTypeInitializer;Ljava/util/List;Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;)V

    .line 6161
    return-object v6
.end method

.method public varargs include([Lnet/bytebuddy/dynamic/DynamicType;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;
    .locals 1
    .param p1, "dynamicType"    # [Lnet/bytebuddy/dynamic/DynamicType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Unloaded<",
            "TT;>;"
        }
    .end annotation

    .line 6154
    .local p0, "this":Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;, "Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded<TT;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->include(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/DynamicType$Loaded;
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Loaded<",
            "TT;>;"
        }
    .end annotation

    .line 6134
    .local p0, "this":Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;, "Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded<TT;>;"
    instance-of v0, p1, Lnet/bytebuddy/dynamic/loading/InjectionClassLoader;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/dynamic/loading/InjectionClassLoader;

    invoke-virtual {v0}, Lnet/bytebuddy/dynamic/loading/InjectionClassLoader;->isSealed()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/dynamic/loading/InjectionClassLoader;

    sget-object v1, Lnet/bytebuddy/dynamic/loading/InjectionClassLoader$Strategy;->INSTANCE:Lnet/bytebuddy/dynamic/loading/InjectionClassLoader$Strategy;

    .line 6135
    invoke-virtual {p0, v0, v1}, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->load(Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Loaded;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->WRAPPER:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    .line 6136
    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->load(Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Loaded;

    move-result-object v0

    .line 6134
    :goto_0
    return-object v0
.end method

.method public load(Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Loaded;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/ClassLoader;",
            ">(TS;",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy<",
            "-TS;>;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Loaded<",
            "TT;>;"
        }
    .end annotation

    .line 6143
    .local p0, "this":Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;, "Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded<TT;>;"
    .local p1, "classLoader":Ljava/lang/ClassLoader;, "TS;"
    .local p2, "classLoadingStrategy":Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;, "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy<-TS;>;"
    new-instance v6, Lnet/bytebuddy/dynamic/DynamicType$Default$Loaded;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->binaryRepresentation:[B

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v4, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->auxiliaryTypes:Ljava/util/List;

    iget-object v0, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->typeResolutionStrategy:Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;

    .line 6147
    invoke-interface {v0, p0, p1, p2}, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;->initialize(Lnet/bytebuddy/dynamic/DynamicType;Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Ljava/util/Map;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/dynamic/DynamicType$Default$Loaded;-><init>(Lnet/bytebuddy/description/type/TypeDescription;[BLnet/bytebuddy/implementation/LoadedTypeInitializer;Ljava/util/List;Ljava/util/Map;)V

    .line 6143
    return-object v6
.end method
