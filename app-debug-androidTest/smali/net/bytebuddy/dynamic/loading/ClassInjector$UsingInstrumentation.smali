.class public Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;
.super Lnet/bytebuddy/dynamic/loading/ClassInjector$AbstractBase;
.source "ClassInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsingInstrumentation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;,
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final CLASS_FILE_EXTENSION:Ljava/lang/String; = ".class"

.field private static final DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;

.field private static final JAR:Ljava/lang/String; = "jar"


# instance fields
.field private final folder:Ljava/io/File;

.field private final instrumentation:Ljava/lang/instrument/Instrumentation;

.field private final randomString:Lnet/bytebuddy/utility/RandomString;

.field private final target:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2199
    const-class v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;

    return-void
.end method

.method protected constructor <init>(Ljava/io/File;Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/utility/RandomString;)V
    .locals 0
    .param p1, "folder"    # Ljava/io/File;
    .param p2, "target"    # Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;
    .param p3, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .param p4, "randomString"    # Lnet/bytebuddy/utility/RandomString;

    .line 2232
    invoke-direct {p0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$AbstractBase;-><init>()V

    .line 2233
    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->folder:Ljava/io/File;

    .line 2234
    iput-object p2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->target:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    .line 2235
    iput-object p3, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->instrumentation:Ljava/lang/instrument/Instrumentation;

    .line 2236
    iput-object p4, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->randomString:Lnet/bytebuddy/utility/RandomString;

    .line 2237
    return-void
.end method

.method static synthetic access$200()Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;
    .locals 1

    .line 2184
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;

    return-object v0
.end method

.method public static isAvailable()Z
    .locals 2

    .line 2350
    sget-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    invoke-static {v0}, Lnet/bytebuddy/ClassFileVersion;->ofThisVm(Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V6:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v0

    return v0
.end method

.method public static of(Ljava/io/File;Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/dynamic/loading/ClassInjector;
    .locals 2
    .param p0, "folder"    # Ljava/io/File;
    .param p1, "target"    # Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;
    .param p2, "instrumentation"    # Ljava/lang/instrument/Instrumentation;

    .line 2292
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;

    new-instance v1, Lnet/bytebuddy/utility/RandomString;

    invoke-direct {v1}, Lnet/bytebuddy/utility/RandomString;-><init>()V

    invoke-direct {v0, p0, p1, p2, v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;-><init>(Ljava/io/File;Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/utility/RandomString;)V

    return-object v0
.end method

.method public static redefineModule(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/utility/JavaModule;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;)V
    .locals 12
    .param p0, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .param p1, "target"    # Lnet/bytebuddy/utility/JavaModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Lnet/bytebuddy/utility/JavaModule;",
            "Ljava/util/Set<",
            "Lnet/bytebuddy/utility/JavaModule;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lnet/bytebuddy/utility/JavaModule;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lnet/bytebuddy/utility/JavaModule;",
            ">;>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;)V"
        }
    .end annotation

    .line 2257
    .local p2, "reads":Ljava/util/Set;, "Ljava/util/Set<Lnet/bytebuddy/utility/JavaModule;>;"
    .local p3, "exports":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lnet/bytebuddy/utility/JavaModule;>;>;"
    .local p4, "opens":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lnet/bytebuddy/utility/JavaModule;>;>;"
    .local p5, "uses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .local p6, "provides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/List<Ljava/lang/Class<*>;>;>;"
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;

    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaModule;->unwrap()Ljava/lang/Object;

    move-result-object v1

    move-object v10, p0

    invoke-interface {v0, p0, v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;->isModifiableModule(Ljava/lang/instrument/Instrumentation;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2260
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2261
    .local v0, "unwrappedReads":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/utility/JavaModule;

    .line 2262
    .local v2, "read":Lnet/bytebuddy/utility/JavaModule;
    invoke-virtual {v2}, Lnet/bytebuddy/utility/JavaModule;->unwrap()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2263
    .end local v2    # "read":Lnet/bytebuddy/utility/JavaModule;
    goto :goto_0

    .line 2264
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2265
    .local v1, "unwrappedExports":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<*>;>;"
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2266
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Lnet/bytebuddy/utility/JavaModule;>;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2267
    .local v4, "modules":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/utility/JavaModule;

    .line 2268
    .local v6, "module":Lnet/bytebuddy/utility/JavaModule;
    invoke-virtual {v6}, Lnet/bytebuddy/utility/JavaModule;->unwrap()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2269
    .end local v6    # "module":Lnet/bytebuddy/utility/JavaModule;
    goto :goto_2

    .line 2270
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2271
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Lnet/bytebuddy/utility/JavaModule;>;>;"
    .end local v4    # "modules":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    goto :goto_1

    .line 2272
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v11, v2

    .line 2273
    .local v11, "unwrappedOpens":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<*>;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2274
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Lnet/bytebuddy/utility/JavaModule;>;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2275
    .restart local v4    # "modules":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/utility/JavaModule;

    .line 2276
    .restart local v6    # "module":Lnet/bytebuddy/utility/JavaModule;
    invoke-virtual {v6}, Lnet/bytebuddy/utility/JavaModule;->unwrap()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2277
    .end local v6    # "module":Lnet/bytebuddy/utility/JavaModule;
    goto :goto_4

    .line 2278
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v11, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2279
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Lnet/bytebuddy/utility/JavaModule;>;>;"
    .end local v4    # "modules":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    goto :goto_3

    .line 2280
    :cond_4
    sget-object v2, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;

    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaModule;->unwrap()Ljava/lang/Object;

    move-result-object v4

    move-object v3, p0

    move-object v5, v0

    move-object v6, v1

    move-object v7, v11

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v2 .. v9}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;->redefineModule(Ljava/lang/instrument/Instrumentation;Ljava/lang/Object;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;)V

    .line 2281
    return-void

    .line 2258
    .end local v0    # "unwrappedReads":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    .end local v1    # "unwrappedExports":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<*>;>;"
    .end local v11    # "unwrappedOpens":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<*>;>;"
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot modify module: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->target:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    check-cast p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->target:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->instrumentation:Ljava/lang/instrument/Instrumentation;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->folder:Ljava/io/File;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->folder:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->randomString:Lnet/bytebuddy/utility/RandomString;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->randomString:Lnet/bytebuddy/utility/RandomString;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/utility/RandomString;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->target:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    invoke-virtual {v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->folder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->randomString:Lnet/bytebuddy/utility/RandomString;

    invoke-virtual {v1}, Lnet/bytebuddy/utility/RandomString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public injectRaw(Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 2306
    .local p1, "types":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;[B>;"
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->folder:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->randomString:Lnet/bytebuddy/utility/RandomString;

    invoke-virtual {v4}, Lnet/bytebuddy/utility/RandomString;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2308
    .local v0, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    .line 2312
    :try_start_1
    new-instance v1, Ljava/util/jar/JarOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2314
    .local v1, "jarOutputStream":Ljava/util/jar/JarOutputStream;
    :try_start_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2315
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    new-instance v4, Ljava/util/jar/JarEntry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v7, 0x2e

    const/16 v8, 0x2f

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".class"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 2316
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v1, v4}, Ljava/util/jar/JarOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2317
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;[B>;"
    goto :goto_0

    .line 2319
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/util/jar/JarOutputStream;->close()V

    .line 2320
    nop

    .line 2321
    new-instance v2, Ljava/util/jar/JarFile;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2323
    .local v2, "jarFile":Ljava/util/jar/JarFile;
    :try_start_4
    iget-object v4, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->target:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    iget-object v5, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-virtual {v4, v5, v2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;->inject(Ljava/lang/instrument/Instrumentation;Ljava/util/jar/JarFile;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2325
    :try_start_5
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    .line 2326
    nop

    .line 2327
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2328
    .local v4, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2329
    .local v6, "name":Ljava/lang/String;
    iget-object v7, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->target:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    invoke-virtual {v7}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-static {v6, v3, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2330
    nop

    .end local v6    # "name":Ljava/lang/String;
    goto :goto_1

    .line 2331
    :cond_1
    nop

    .line 2333
    :try_start_6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2334
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    .line 2331
    :cond_2
    return-object v4

    .line 2325
    .end local v4    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    :catchall_0
    move-exception v3

    :try_start_7
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    .line 2326
    nop

    .end local v0    # "file":Ljava/io/File;
    .end local p1    # "types":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;[B>;"
    throw v3

    .line 2319
    .end local v2    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v0    # "file":Ljava/io/File;
    .restart local p1    # "types":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;[B>;"
    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Ljava/util/jar/JarOutputStream;->close()V

    .line 2320
    nop

    .end local v0    # "file":Ljava/io/File;
    .end local p1    # "types":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;[B>;"
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2333
    .end local v1    # "jarOutputStream":Ljava/util/jar/JarOutputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local p1    # "types":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;[B>;"
    :catchall_2
    move-exception v1

    :try_start_8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2334
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 2336
    :cond_3
    nop

    .end local v0    # "file":Ljava/io/File;
    .end local p1    # "types":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;[B>;"
    throw v1

    .line 2309
    .restart local v0    # "file":Ljava/io/File;
    .restart local p1    # "types":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;[B>;"
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .end local p1    # "types":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;[B>;"
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_0

    .line 2339
    .restart local v0    # "file":Ljava/io/File;
    .restart local p1    # "types":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;[B>;"
    :catch_0
    move-exception v1

    .line 2340
    .local v1, "exception":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot load injected class"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2337
    .end local v1    # "exception":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 2338
    .local v1, "exception":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot write jar file to disk"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isAlive()Z
    .locals 1

    .line 2299
    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->isAvailable()Z

    move-result v0

    return v0
.end method
