.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Minimal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 3458
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;

    .line 3453
    filled-new-array {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3453
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3453
    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;
    .locals 1

    .line 3453
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Minimal;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/dynamic/DynamicType$Builder;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 3471
    .local p1, "builder":Lnet/bytebuddy/dynamic/DynamicType$Builder;, "Lnet/bytebuddy/dynamic/DynamicType$Builder<*>;"
    return-object p1
.end method

.method public dispatcher()Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher;
    .locals 0

    .line 3464
    return-object p0
.end method

.method public register(Lnet/bytebuddy/dynamic/DynamicType;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy;)V
    .locals 8
    .param p1, "dynamicType"    # Lnet/bytebuddy/dynamic/DynamicType;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .param p4, "injectionStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy;

    .line 3478
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/DynamicType;->getAuxiliaryTypes()Ljava/util/Map;

    move-result-object v0

    .line 3479
    .local v0, "auxiliaryTypes":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;[B>;"
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 3480
    .local v1, "independentTypes":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;[B>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    .line 3481
    .local v3, "auxiliaryType":Lnet/bytebuddy/description/type/TypeDescription;
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v4

    const-class v5, Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$SignatureRelevant;

    invoke-interface {v4, v5}, Lnet/bytebuddy/description/annotation/AnnotationList;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3482
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3484
    .end local v3    # "auxiliaryType":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_0
    goto :goto_0

    .line 3485
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3486
    invoke-interface {p4, p2, p3}, Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy;->resolve(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/loading/ClassInjector;

    move-result-object v2

    .line 3487
    .local v2, "classInjector":Lnet/bytebuddy/dynamic/loading/ClassInjector;
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/DynamicType;->getLoadedTypeInitializers()Ljava/util/Map;

    move-result-object v3

    .line 3488
    .local v3, "loadedTypeInitializers":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/LoadedTypeInitializer;>;"
    invoke-interface {v2, v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector;->inject(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 3489
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Class<*>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    invoke-interface {v6, v7}, Lnet/bytebuddy/implementation/LoadedTypeInitializer;->onLoad(Ljava/lang/Class;)V

    .line 3490
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Class<*>;>;"
    goto :goto_1

    .line 3492
    .end local v2    # "classInjector":Lnet/bytebuddy/dynamic/loading/ClassInjector;
    .end local v3    # "loadedTypeInitializers":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/LoadedTypeInitializer;>;"
    :cond_2
    return-void
.end method
