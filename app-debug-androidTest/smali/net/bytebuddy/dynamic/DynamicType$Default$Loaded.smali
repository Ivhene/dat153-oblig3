.class public Lnet/bytebuddy/dynamic/DynamicType$Default$Loaded;
.super Lnet/bytebuddy/dynamic/DynamicType$Default;
.source "DynamicType.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/DynamicType$Loaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/DynamicType$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Loaded"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/dynamic/DynamicType$Default;",
        "Lnet/bytebuddy/dynamic/DynamicType$Loaded<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final loadedTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;[BLnet/bytebuddy/implementation/LoadedTypeInitializer;Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "typeByte"    # [B
    .param p3, "loadedTypeInitializer"    # Lnet/bytebuddy/implementation/LoadedTypeInitializer;
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
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 6197
    .local p0, "this":Lnet/bytebuddy/dynamic/DynamicType$Default$Loaded;, "Lnet/bytebuddy/dynamic/DynamicType$Default$Loaded<TT;>;"
    .local p4, "auxiliaryTypes":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/dynamic/DynamicType;>;"
    .local p5, "loadedTypes":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Class<*>;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/dynamic/DynamicType$Default;-><init>(Lnet/bytebuddy/description/type/TypeDescription;[BLnet/bytebuddy/implementation/LoadedTypeInitializer;Ljava/util/List;)V

    .line 6198
    iput-object p5, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Loaded;->loadedTypes:Ljava/util/Map;

    .line 6199
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Loaded;->loadedTypes:Ljava/util/Map;

    check-cast p1, Lnet/bytebuddy/dynamic/DynamicType$Default$Loaded;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/DynamicType$Default$Loaded;->loadedTypes:Ljava/util/Map;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getLoaded()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation

    .line 6206
    .local p0, "this":Lnet/bytebuddy/dynamic/DynamicType$Default$Loaded;, "Lnet/bytebuddy/dynamic/DynamicType$Default$Loaded<TT;>;"
    iget-object v0, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Loaded;->loadedTypes:Ljava/util/Map;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Loaded;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public getLoadedAuxiliaryTypes()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 6213
    .local p0, "this":Lnet/bytebuddy/dynamic/DynamicType$Default$Loaded;, "Lnet/bytebuddy/dynamic/DynamicType$Default$Loaded<TT;>;"
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Loaded;->loadedTypes:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 6215
    .local v0, "loadedAuxiliaryTypes":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Class<*>;>;"
    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Loaded;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6216
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/dynamic/DynamicType$Default;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Loaded;->loadedTypes:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
