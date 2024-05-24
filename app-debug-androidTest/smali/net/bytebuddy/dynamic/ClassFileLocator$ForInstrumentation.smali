.class public Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;
.super Ljava/lang/Object;
.source "ClassFileLocator.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/ClassFileLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForInstrumentation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ExtractionClassFileTransformer;,
        Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;,
        Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$Dispatcher;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final DISPATCHER:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$Dispatcher;

.field private static final INSTALLER_TYPE:Ljava/lang/String; = "net.bytebuddy.agent.Installer"

.field private static final INSTRUMENTATION_GETTER:Ljava/lang/String; = "getInstrumentation"

.field private static final STATIC_MEMBER:Ljava/lang/Object;


# instance fields
.field private final classLoadingDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

.field private final instrumentation:Ljava/lang/instrument/Instrumentation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1187
    nop

    .line 1182
    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->STATIC_MEMBER:Ljava/lang/Object;

    .line 1187
    const-class v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$Dispatcher;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$Dispatcher;

    sput-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->DISPATCHER:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$Dispatcher;

    return-void
.end method

.method public constructor <init>(Ljava/lang/instrument/Instrumentation;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 1206
    invoke-static {p2}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate$Default;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;-><init>(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;)V

    .line 1207
    return-void
.end method

.method public constructor <init>(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;)V
    .locals 3
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .param p2, "classLoadingDelegate"    # Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

    .line 1215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1216
    sget-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->DISPATCHER:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$Dispatcher;

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$Dispatcher;->isRetransformClassesSupported(Ljava/lang/instrument/Instrumentation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    iput-object p1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->instrumentation:Ljava/lang/instrument/Instrumentation;

    .line 1220
    iput-object p2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->classLoadingDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

    .line 1221
    return-void

    .line 1217
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support retransformation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromInstalledAgent(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 5
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .line 1232
    :try_start_0
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "net.bytebuddy.agent.Installer"

    .line 1233
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstrumentation"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 1234
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->STATIC_MEMBER:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    .line 1235
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/instrument/Instrumentation;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;-><init>(Ljava/lang/instrument/Instrumentation;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    return-object v0

    .line 1238
    :catch_0
    move-exception v0

    .line 1239
    .local v0, "exception":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The Byte Buddy agent is not installed or not accessible"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1236
    .end local v0    # "exception":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1237
    .local v0, "exception":Ljava/lang/RuntimeException;
    throw v0
.end method

.method public static of(Ljava/lang/instrument/Instrumentation;Ljava/lang/Class;)Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 2
    .param p0, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;"
        }
    .end annotation

    .line 1251
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;

    invoke-static {p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate$Explicit;->of(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;-><init>(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1282
    return-void
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->instrumentation:Ljava/lang/instrument/Instrumentation;

    check-cast p1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->classLoadingDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->classLoadingDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->classLoadingDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 1259
    :try_start_0
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ExtractionClassFileTransformer;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->classLoadingDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

    invoke-interface {v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ExtractionClassFileTransformer;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 1260
    .local v0, "classFileTransformer":Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ExtractionClassFileTransformer;
    sget-object v1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->DISPATCHER:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$Dispatcher;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->instrumentation:Ljava/lang/instrument/Instrumentation;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$Dispatcher;->addTransformer(Ljava/lang/instrument/Instrumentation;Ljava/lang/instrument/ClassFileTransformer;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    :try_start_1
    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->instrumentation:Ljava/lang/instrument/Instrumentation;

    new-array v3, v3, [Ljava/lang/Class;

    iget-object v4, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->classLoadingDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

    invoke-interface {v4, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;->locate(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$Dispatcher;->retransformClasses(Ljava/lang/instrument/Instrumentation;[Ljava/lang/Class;)V

    .line 1263
    invoke-virtual {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ExtractionClassFileTransformer;->getBinaryRepresentation()[B

    move-result-object v1

    .line 1264
    .local v1, "binaryRepresentation":[B
    if-nez v1, :cond_0

    new-instance v2, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;

    invoke-direct {v2, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;

    invoke-direct {v2, v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1268
    :goto_0
    :try_start_2
    iget-object v3, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-interface {v3, v0}, Ljava/lang/instrument/Instrumentation;->removeTransformer(Ljava/lang/instrument/ClassFileTransformer;)Z

    .line 1264
    return-object v2

    .line 1268
    .end local v1    # "binaryRepresentation":[B
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-interface {v2, v0}, Ljava/lang/instrument/Instrumentation;->removeTransformer(Ljava/lang/instrument/ClassFileTransformer;)Z

    .line 1269
    nop

    .end local p1    # "name":Ljava/lang/String;
    throw v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1272
    .end local v0    # "classFileTransformer":Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ExtractionClassFileTransformer;
    .restart local p1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1273
    .local v0, "ignored":Ljava/lang/Exception;
    new-instance v1, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;

    invoke-direct {v1, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 1270
    .end local v0    # "ignored":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1271
    .local v0, "exception":Ljava/lang/RuntimeException;
    throw v0
.end method
