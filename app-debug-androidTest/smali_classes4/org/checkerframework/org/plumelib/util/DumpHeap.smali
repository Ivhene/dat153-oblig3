.class public Lorg/checkerframework/org/plumelib/util/DumpHeap;
.super Ljava/lang/Object;
.source "DumpHeap.java"


# static fields
.field private static dumpHeapMethod:Ljava/lang/reflect/Method;

.field private static volatile hotspotMBean:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpHeap(Ljava/lang/String;)V
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/checkerframework/org/plumelib/util/DumpHeap;->dumpHeap(Ljava/lang/String;Z)V

    .line 49
    return-void
.end method

.method public static dumpHeap(Ljava/lang/String;Z)V
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "live"    # Z

    .line 58
    invoke-static {}, Lorg/checkerframework/org/plumelib/util/DumpHeap;->initializeFields()V

    .line 61
    :try_start_0
    sget-object v0, Lorg/checkerframework/org/plumelib/util/DumpHeap;->dumpHeapMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lorg/checkerframework/org/plumelib/util/DumpHeap;->hotspotMBean:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    nop

    .line 65
    return-void

    .line 62
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static declared-synchronized initializeFields()V
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "hotspotMBean",
            "dumpHeapMethod"
        }
    .end annotation

    const-class v0, Lorg/checkerframework/org/plumelib/util/DumpHeap;

    monitor-enter v0

    .line 30
    :try_start_0
    const-string v1, "com.sun.management.HotSpotDiagnosticMXBean"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 33
    .local v1, "mxbeanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v2

    const-string v3, "com.sun.management:type=HotSpotDiagnostic"

    .line 32
    invoke-static {v2, v3, v1}, Ljava/lang/management/ManagementFactory;->newPlatformMXBeanProxy(Ljavax/management/MBeanServerConnection;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lorg/checkerframework/org/plumelib/util/DumpHeap;->hotspotMBean:Ljava/lang/Object;

    .line 36
    const-string v2, "dumpHeap"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/checkerframework/org/plumelib/util/DumpHeap;->dumpHeapMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .end local v1    # "mxbeanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 40
    monitor-exit v0

    return-void

    .line 29
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 37
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    .line 38
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit v0

    throw v1
.end method
