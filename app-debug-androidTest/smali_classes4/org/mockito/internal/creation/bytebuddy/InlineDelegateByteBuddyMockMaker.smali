.class Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;
.super Ljava/lang/Object;
.source "InlineDelegateByteBuddyMockMaker.java"

# interfaces
.implements Lorg/mockito/internal/creation/bytebuddy/ClassCreatingMockMaker;
.implements Lorg/mockito/plugins/InlineMockMaker;
.implements Lorg/mockito/creation/instance/Instantiator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockContext;,
        Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;,
        Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl;
    }
.end annotation

.annotation runtime Lorg/mockito/Incubating;
.end annotation


# static fields
.field private static final INITIALIZATION_ERROR:Ljava/lang/Throwable;

.field private static final INSTRUMENTATION:Ljava/lang/instrument/Instrumentation;


# instance fields
.field private final bytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

.field private final currentSpied:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mockedConstruction:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/util/concurrent/DetachedThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Object;",
            "Lorg/mockito/MockedConstruction$Context;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mockedStatics:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/util/concurrent/DetachedThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mockitoConstruction:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mocks:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<",
            "Ljava/lang/Object;",
            "Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 114
    const-string v0, ".raw"

    const-class v1, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    const-string v2, ""

    const/4 v3, 0x0

    .line 117
    .local v3, "initializationError":Ljava/lang/Throwable;
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->install()Ljava/lang/instrument/Instrumentation;

    move-result-object v8

    .line 118
    .local v8, "instrumentation":Ljava/lang/instrument/Instrumentation;
    invoke-interface {v8}, Ljava/lang/instrument/Instrumentation;->isRetransformClassesSupported()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 125
    const-string v9, "mockitoboot"

    const-string v10, ".jar"

    invoke-static {v9, v10}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 126
    .local v9, "boot":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->deleteOnExit()V

    .line 127
    new-instance v10, Ljava/util/jar/JarOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 129
    .local v10, "outputStream":Ljava/util/jar/JarOutputStream;
    :try_start_1
    const-string v11, "org/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher"

    .line 131
    .local v11, "source":Ljava/lang/String;
    nop

    .line 133
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 134
    invoke-virtual {v12, v13}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 135
    .local v12, "inputStream":Ljava/io/InputStream;
    if-eqz v12, :cond_1

    .line 146
    new-instance v0, Ljava/util/jar/JarEntry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v13, ".class"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 149
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 150
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v12, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v13, v1

    .local v13, "length":I
    const/4 v14, -0x1

    if-eq v1, v14, :cond_0

    .line 151
    invoke-virtual {v10, v0, v7, v13}, Ljava/util/jar/JarOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    .line 154
    .end local v0    # "buffer":[B
    .end local v13    # "length":I
    :cond_0
    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 155
    nop

    .line 156
    invoke-virtual {v10}, Ljava/util/jar/JarOutputStream;->closeEntry()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 158
    .end local v11    # "source":Ljava/lang/String;
    .end local v12    # "inputStream":Ljava/io/InputStream;
    :try_start_4
    invoke-virtual {v10}, Ljava/util/jar/JarOutputStream;->close()V

    .line 159
    nop

    .line 160
    new-instance v0, Ljava/util/jar/JarFile;

    invoke-direct {v0, v9}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-object v1, v0

    .line 161
    .local v1, "jarfile":Ljava/util/jar/JarFile;
    :try_start_5
    invoke-interface {v8, v1}, Ljava/lang/instrument/Instrumentation;->appendToBootstrapClassLoaderSearch(Ljava/util/jar/JarFile;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 162
    :try_start_6
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 164
    .end local v1    # "jarfile":Ljava/util/jar/JarFile;
    :try_start_7
    const-string v0, "org.mockito.internal.creation.bytebuddy.inject.MockMethodDispatcher"

    const/4 v1, 0x0

    invoke-static {v0, v7, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 175
    nop

    .line 185
    .end local v9    # "boot":Ljava/io/File;
    .end local v10    # "outputStream":Ljava/util/jar/JarOutputStream;
    nop

    .line 189
    goto/16 :goto_3

    .line 168
    .restart local v9    # "boot":Ljava/io/File;
    .restart local v10    # "outputStream":Ljava/util/jar/JarOutputStream;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    :try_start_8
    new-instance v1, Ljava/lang/IllegalStateException;

    new-array v11, v6, [Ljava/lang/Object;

    const-string v12, "Mockito failed to inject the MockMethodDispatcher class into the bootstrap class loader"

    aput-object v12, v11, v7

    aput-object v2, v11, v5

    const-string v12, "It seems like your current VM does not support the instrumentation API correctly."

    aput-object v12, v11, v4

    .line 170
    invoke-static {v11}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "initializationError":Ljava/lang/Throwable;
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 160
    .end local v0    # "cnfe":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "jarfile":Ljava/util/jar/JarFile;
    .restart local v3    # "initializationError":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    move-object v11, v0

    .end local v1    # "jarfile":Ljava/util/jar/JarFile;
    .end local v3    # "initializationError":Ljava/lang/Throwable;
    .end local v8    # "instrumentation":Ljava/lang/instrument/Instrumentation;
    .end local v9    # "boot":Ljava/io/File;
    .end local v10    # "outputStream":Ljava/util/jar/JarOutputStream;
    :try_start_9
    throw v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 162
    .restart local v1    # "jarfile":Ljava/util/jar/JarFile;
    .restart local v3    # "initializationError":Ljava/lang/Throwable;
    .restart local v8    # "instrumentation":Ljava/lang/instrument/Instrumentation;
    .restart local v9    # "boot":Ljava/io/File;
    .restart local v10    # "outputStream":Ljava/util/jar/JarOutputStream;
    :catchall_1
    move-exception v0

    move-object v12, v0

    :try_start_a
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v13, v0

    :try_start_b
    invoke-virtual {v11, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "initializationError":Ljava/lang/Throwable;
    :goto_1
    throw v12
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 154
    .end local v1    # "jarfile":Ljava/util/jar/JarFile;
    .restart local v3    # "initializationError":Ljava/lang/Throwable;
    .restart local v11    # "source":Ljava/lang/String;
    .restart local v12    # "inputStream":Ljava/io/InputStream;
    :catchall_3
    move-exception v0

    :try_start_c
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .end local v3    # "initializationError":Ljava/lang/Throwable;
    .end local v8    # "instrumentation":Ljava/lang/instrument/Instrumentation;
    .end local v9    # "boot":Ljava/io/File;
    .end local v10    # "outputStream":Ljava/util/jar/JarOutputStream;
    throw v0

    .line 136
    .restart local v3    # "initializationError":Ljava/lang/Throwable;
    .restart local v8    # "instrumentation":Ljava/lang/instrument/Instrumentation;
    .restart local v9    # "boot":Ljava/io/File;
    .restart local v10    # "outputStream":Ljava/util/jar/JarOutputStream;
    :cond_1
    new-instance v13, Ljava/lang/IllegalStateException;

    new-array v14, v6, [Ljava/lang/Object;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The MockMethodDispatcher class file is not locatable: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v7

    aput-object v2, v14, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The class loader responsible for looking up the resource: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v4

    .line 137
    invoke-static {v14}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "initializationError":Ljava/lang/Throwable;
    .end local v8    # "instrumentation":Ljava/lang/instrument/Instrumentation;
    .end local v9    # "boot":Ljava/io/File;
    .end local v10    # "outputStream":Ljava/util/jar/JarOutputStream;
    throw v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 158
    .end local v11    # "source":Ljava/lang/String;
    .end local v12    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "initializationError":Ljava/lang/Throwable;
    .restart local v8    # "instrumentation":Ljava/lang/instrument/Instrumentation;
    .restart local v9    # "boot":Ljava/io/File;
    .restart local v10    # "outputStream":Ljava/util/jar/JarOutputStream;
    :catchall_4
    move-exception v0

    :try_start_d
    invoke-virtual {v10}, Ljava/util/jar/JarOutputStream;->close()V

    .end local v3    # "initializationError":Ljava/lang/Throwable;
    throw v0

    .line 119
    .end local v9    # "boot":Ljava/io/File;
    .end local v10    # "outputStream":Ljava/util/jar/JarOutputStream;
    .restart local v3    # "initializationError":Ljava/lang/Throwable;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/Object;

    const-string v1, "Byte Buddy requires retransformation for creating inline mocks. This feature is unavailable on the current VM."

    aput-object v1, v6, v7

    aput-object v2, v6, v5

    const-string v1, "You cannot use this mock maker on this VM"

    aput-object v1, v6, v4

    .line 120
    invoke-static {v6}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "initializationError":Ljava/lang/Throwable;
    throw v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 186
    .end local v8    # "instrumentation":Ljava/lang/instrument/Instrumentation;
    .restart local v3    # "initializationError":Ljava/lang/Throwable;
    :catchall_5
    move-exception v0

    goto :goto_2

    .line 176
    :catch_1
    move-exception v0

    .line 177
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v8, "Mockito could not self-attach a Java agent to the current VM. This feature is required for inline mocking."

    aput-object v8, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This error occured due to an I/O error during the creation of this agent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    aput-object v2, v6, v4

    const-string v2, "Potentially, the current VM does not support the instrumentation API correctly"

    const/4 v4, 0x3

    aput-object v2, v6, v4

    .line 178
    invoke-static {v6}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "initializationError":Ljava/lang/Throwable;
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 187
    .local v0, "throwable":Ljava/lang/Throwable;
    .restart local v3    # "initializationError":Ljava/lang/Throwable;
    :goto_2
    const/4 v8, 0x0

    .line 188
    .restart local v8    # "instrumentation":Ljava/lang/instrument/Instrumentation;
    move-object v3, v0

    .line 190
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_3
    sput-object v8, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->INSTRUMENTATION:Ljava/lang/instrument/Instrumentation;

    .line 191
    sput-object v3, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->INITIALIZATION_ERROR:Ljava/lang/Throwable;

    .line 192
    .end local v3    # "initializationError":Ljava/lang/Throwable;
    .end local v8    # "instrumentation":Ljava/lang/instrument/Instrumentation;
    return-void
.end method

.method constructor <init>()V
    .locals 11

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v2, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;

    invoke-direct {v2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;-><init>()V

    iput-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->mocks:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    .line 199
    new-instance v3, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;

    sget-object v0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;->INLINE:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    invoke-direct {v3, v0}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;-><init>(Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;)V

    iput-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->mockedStatics:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;

    .line 202
    new-instance v0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;

    sget-object v1, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;->INLINE:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    invoke-direct {v0, v1}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;-><init>(Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;)V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->mockedConstruction:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;

    .line 205
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->mockitoConstruction:Ljava/lang/ThreadLocal;

    .line 207
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->currentSpied:Ljava/lang/ThreadLocal;

    .line 210
    sget-object v0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->INITIALIZATION_ERROR:Ljava/lang/Throwable;

    const/4 v6, 0x1

    if-eqz v0, :cond_4

    .line 212
    const-string v1, "java.specification.vendor"

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 214
    const-string v3, "android"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 219
    :try_start_0
    instance-of v1, v0, Ljava/lang/NoClassDefFoundError;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 220
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 222
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "net/bytebuddy/agent/"

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "It seems like you are running Mockito with an incomplete or inconsistent class path. Byte Buddy Agent could not be loaded."

    aput-object v1, v0, v3

    aput-object v2, v0, v6

    const-string v1, "Byte Buddy Agent is available on Maven Central as \'net.bytebuddy:byte-buddy-agent\' with the module name \'net.bytebuddy.agent\'."

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "Normally, your IDE or build tool (such as Maven or Gradle) should take care of your class path completion but "

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 225
    invoke-static {v0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "detail":Ljava/lang/String;
    goto :goto_1

    .line 230
    .end local v0    # "detail":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v0, "javax.tools.ToolProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getSystemJavaCompiler"

    new-array v4, v3, [Ljava/lang/Class;

    .line 231
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 232
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 234
    const-string v0, "It appears as if you are running on a JRE. Either install a JDK or add JNA to the class path."

    .restart local v0    # "detail":Ljava/lang/String;
    goto :goto_1

    .line 237
    .end local v0    # "detail":Ljava/lang/String;
    :cond_2
    const-string v0, "It appears as if your JDK does not supply a working agent attachment mechanism."
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    .restart local v0    # "detail":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 240
    .end local v0    # "detail":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 241
    .local v0, "ignored":Ljava/lang/Throwable;
    const-string v1, "It appears as if you are running an incomplete JVM installation that might not support all tooling APIs"

    move-object v0, v1

    .local v1, "detail":Ljava/lang/String;
    goto :goto_2

    .line 215
    .end local v0    # "ignored":Ljava/lang/Throwable;
    .end local v1    # "detail":Ljava/lang/String;
    :cond_3
    const-string v0, "It appears as if you are trying to run this mock maker on Android which does not support the instrumentation API."

    .line 245
    .local v0, "detail":Ljava/lang/String;
    :goto_2
    new-instance v1, Lorg/mockito/exceptions/base/MockitoInitializationException;

    .line 250
    invoke-static {}, Lorg/mockito/internal/util/Platform;->describe()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Could not initialize inline Byte Buddy mock maker."

    filled-new-array {v4, v2, v0, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 246
    invoke-static {v2}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->INITIALIZATION_ERROR:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Lorg/mockito/exceptions/base/MockitoInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 254
    .end local v0    # "detail":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    move-object v7, v0

    .line 255
    .local v7, "currentConstruction":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/lang/Class<*>;>;"
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v8

    .line 256
    .local v8, "isSuspended":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/lang/Boolean;>;"
    new-instance v4, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v8, v7}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda3;-><init>(Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;Ljava/lang/ThreadLocal;Ljava/lang/ThreadLocal;)V

    .line 271
    .local v4, "isMockConstruction":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Class<*>;>;"
    new-instance v5, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v8, v7}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda4;-><init>(Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;Ljava/lang/ThreadLocal;Ljava/lang/ThreadLocal;)V

    .line 317
    .local v5, "onConstruction":Lorg/mockito/internal/creation/bytebuddy/ConstructionCallback;
    new-instance v9, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;

    new-instance v10, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;

    sget-object v1, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->INSTRUMENTATION:Ljava/lang/instrument/Instrumentation;

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;-><init>(Ljava/lang/instrument/Instrumentation;Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;Ljava/util/function/Predicate;Lorg/mockito/internal/creation/bytebuddy/ConstructionCallback;)V

    invoke-direct {v9, v10, v6}, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;-><init>(Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;Z)V

    iput-object v9, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->bytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

    .line 326
    return-void
.end method

.method static synthetic access$000()Ljava/lang/instrument/Instrumentation;
    .locals 1

    .line 105
    sget-object v0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->INSTRUMENTATION:Ljava/lang/instrument/Instrumentation;

    return-object v0
.end method

.method static synthetic access$400(Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;)Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    .line 105
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->mocks:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    return-object v0
.end method

.method private doCreateMock(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;Z)Ljava/lang/Object;
    .locals 5
    .param p2, "handler"    # Lorg/mockito/invocation/MockHandler;
    .param p3, "nullOnNonInlineConstruction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;",
            "Lorg/mockito/invocation/MockHandler;",
            "Z)TT;"
        }
    .end annotation

    .line 351
    .local p1, "settings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<TT;>;"
    invoke-virtual {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->createMockType(Lorg/mockito/mock/MockCreationSettings;)Ljava/lang/Class;

    move-result-object v0

    .line 355
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    :try_start_0
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->isUsingConstructor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    new-instance v1, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;

    .line 358
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getOuterClassInstance()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 359
    :goto_0
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getConstructorArgs()[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;-><init>(Z[Ljava/lang/Object;)V

    .line 360
    invoke-virtual {v1, v0}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lorg/mockito/creation/instance/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "instance":Ljava/lang/Object;, "TT;"
    goto :goto_1

    .line 365
    .end local v1    # "instance":Ljava/lang/Object;, "TT;"
    :cond_1
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Lorg/mockito/creation/instance/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 373
    .restart local v1    # "instance":Ljava/lang/Object;, "TT;"
    goto :goto_1

    .line 366
    .end local v1    # "instance":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    .line 367
    .local v1, "ignored":Lorg/mockito/creation/instance/InstantiationException;
    if-eqz p3, :cond_2

    .line 368
    const/4 v2, 0x0

    return-object v2

    .line 371
    :cond_2
    :try_start_2
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getInstantiatorProvider()Lorg/mockito/plugins/InstantiatorProvider2;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/mockito/plugins/InstantiatorProvider2;->getInstantiator(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/creation/instance/Instantiator;

    move-result-object v2

    .line 372
    .local v2, "instantiator":Lorg/mockito/creation/instance/Instantiator;
    invoke-interface {v2, v0}, Lorg/mockito/creation/instance/Instantiator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 375
    .end local v2    # "instantiator":Lorg/mockito/creation/instance/Instantiator;
    .local v1, "instance":Ljava/lang/Object;, "TT;"
    :goto_1
    new-instance v2, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    invoke-direct {v2, p2, p1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;-><init>(Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V

    .line 377
    .local v2, "mockMethodInterceptor":Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;
    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->mocks:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v3, v1, v2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    instance-of v3, v1, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    if-eqz v3, :cond_3

    .line 379
    move-object v3, v1

    check-cast v3, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    invoke-interface {v3, v2}, Lorg/mockito/internal/creation/bytebuddy/MockAccess;->setMockitoInterceptor(Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;)V
    :try_end_2
    .catch Lorg/mockito/creation/instance/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 381
    :cond_3
    return-object v1

    .line 382
    .end local v1    # "instance":Ljava/lang/Object;, "TT;"
    .end local v2    # "mockMethodInterceptor":Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;
    :catch_1
    move-exception v1

    .line 383
    .local v1, "e":Lorg/mockito/creation/instance/InstantiationException;
    new-instance v2, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create mock instance of type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 384
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static synthetic lambda$new$0()Ljava/lang/Boolean;
    .locals 1

    .line 205
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$1()Ljava/lang/Boolean;
    .locals 1

    .line 255
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private makeStandardArgument(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 641
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 642
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 643
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 644
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 645
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    .line 646
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 647
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 648
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 649
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    .line 650
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 651
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    .line 652
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 653
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    .line 654
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 655
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    .line 656
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 658
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private prettifyFailure(Lorg/mockito/mock/MockCreationSettings;Ljava/lang/Exception;)Ljava/lang/RuntimeException;
    .locals 13
    .param p2, "generationFailed"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;",
            "Ljava/lang/Exception;",
            ")",
            "Ljava/lang/RuntimeException;"
        }
    .end annotation

    .line 404
    .local p1, "mockFeatures":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<TT;>;"
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const-string v1, "."

    const-string v2, ""

    if-nez v0, :cond_3

    .line 409
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    const-string v3, "Underlying exception : "

    const-string v4, "Mockito cannot mock this class: "

    if-nez v0, :cond_2

    .line 423
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 436
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v5, v4

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    const-string v4, "If you\'re not sure why you\'re getting this error, please report to the mailing list."

    aput-object v4, v5, v1

    const/4 v1, 0x3

    aput-object v2, v5, v1

    .line 444
    invoke-static {}, Lorg/mockito/internal/util/Platform;->isJava8BelowUpdate45()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    const-string v1, "Java 8 early builds have bugs that were addressed in Java 1.8.0_45, please update your JDK!\n"

    goto :goto_0

    .line 446
    :cond_0
    move-object v1, v2

    .line 440
    :goto_0
    const-string v4, "IBM J9 VM"

    const-string v6, "Early IBM virtual machine are known to have issues with Mockito, please upgrade to an up-to-date version.\n"

    const-string v7, "Hotspot"

    invoke-static {v4, v6, v7, v1}, Lorg/mockito/internal/util/Platform;->warnForVM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v5, v4

    .line 447
    invoke-static {}, Lorg/mockito/internal/util/Platform;->describe()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v5, v4

    const/4 v1, 0x6

    aput-object v2, v5, v1

    const/4 v1, 0x7

    const-string v4, "You are seeing this disclaimer because Mockito is configured to create inlined mocks."

    aput-object v4, v5, v1

    const/16 v1, 0x8

    const-string v4, "You can learn about inline mocks and their limitations under item #39 of the Mockito class javadoc."

    aput-object v4, v5, v1

    const/16 v1, 0x9

    aput-object v2, v5, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v5, v2

    .line 435
    invoke-static {v5}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 424
    :cond_1
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 426
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Most likely it is a private class that is not visible by Mockito"

    const-string v4, ""

    const-string v5, "You are seeing this disclaimer because Mockito is configured to create inlined mocks."

    const-string v6, "You can learn about inline mocks and their limitations under item #39 of the Mockito class javadoc."

    const-string v7, ""

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v1

    .line 425
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 410
    :cond_2
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 412
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Can not mock final classes with the following settings :"

    const-string v6, " - explicit serialization (e.g. withSettings().serializable())"

    const-string v7, " - extra interfaces (e.g. withSettings().extraInterfaces(...))"

    const-string v8, ""

    const-string v9, "You are seeing this disclaimer because Mockito is configured to create inlined mocks."

    const-string v10, "You can learn about inline mocks and their limitations under item #39 of the Mockito class javadoc."

    const-string v11, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    filled-new-array/range {v4 .. v12}, [Ljava/lang/Object;

    move-result-object v1

    .line 411
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 405
    :cond_3
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Arrays cannot be mocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 406
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public clearAllCaches()V
    .locals 1

    .line 499
    invoke-virtual {p0}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->clearAllMocks()V

    .line 500
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->bytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

    invoke-interface {v0}, Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;->clearAllCaches()V

    .line 501
    return-void
.end method

.method public clearAllMocks()V
    .locals 1

    .line 516
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->mockedStatics:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;

    invoke-virtual {v0}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->getBackingMap()Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->clear()V

    .line 517
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->mocks:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->clear()V

    .line 518
    return-void
.end method

.method public clearMock(Ljava/lang/Object;)V
    .locals 2
    .param p1, "mock"    # Ljava/lang/Object;

    .line 505
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->mockedStatics:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;

    invoke-virtual {v0}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->getBackingMap()Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    move-result-object v0

    iget-object v0, v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->target:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 507
    .local v1, "entry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;*>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    .end local v1    # "entry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;*>;"
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 510
    :cond_1
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->mocks:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    :goto_1
    return-void
.end method

.method public createConstructionMock(Ljava/lang/Class;Ljava/util/function/Function;Ljava/util/function/Function;Lorg/mockito/MockedConstruction$MockInitializer;)Lorg/mockito/plugins/MockMaker$ConstructionMockControl;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "Lorg/mockito/MockedConstruction$Context;",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;>;",
            "Ljava/util/function/Function<",
            "Lorg/mockito/MockedConstruction$Context;",
            "Lorg/mockito/invocation/MockHandler<",
            "TT;>;>;",
            "Lorg/mockito/MockedConstruction$MockInitializer<",
            "TT;>;)",
            "Lorg/mockito/plugins/MockMaker$ConstructionMockControl<",
            "TT;>;"
        }
    .end annotation

    .line 578
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "settingsFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/mockito/MockedConstruction$Context;Lorg/mockito/mock/MockCreationSettings<TT;>;>;"
    .local p3, "handlerFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/mockito/MockedConstruction$Context;Lorg/mockito/invocation/MockHandler<TT;>;>;"
    .local p4, "mockInitializer":Lorg/mockito/MockedConstruction$MockInitializer;, "Lorg/mockito/MockedConstruction$MockInitializer<TT;>;"
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_2

    .line 582
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 588
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->bytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

    invoke-interface {v0, p1}, Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;->mockClassConstruction(Ljava/lang/Class;)V

    .line 590
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->mockedConstruction:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;

    .line 591
    invoke-virtual {v0}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 592
    .local v0, "interceptors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/function/BiConsumer<Ljava/lang/Object;Lorg/mockito/MockedConstruction$Context;>;>;"
    if-nez v0, :cond_0

    .line 593
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    move-object v0, v1

    .line 594
    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->mockedConstruction:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;

    invoke-virtual {v1, v0}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->set(Ljava/lang/Object;)V

    .line 597
    :cond_0
    new-instance v1, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;

    const/4 v9, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, v0

    invoke-direct/range {v2 .. v9}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;-><init>(Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;Ljava/lang/Class;Ljava/util/function/Function;Ljava/util/function/Function;Lorg/mockito/MockedConstruction$MockInitializer;Ljava/util/Map;Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$1;)V

    return-object v1

    .line 583
    .end local v0    # "interceptors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/function/BiConsumer<Ljava/lang/Object;Lorg/mockito/MockedConstruction$Context;>;>;"
    :cond_1
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It is not possible to construct primitive types or abstract types: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 585
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_2
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "It is not possible to mock construction of the Object class to avoid inference with default object constructor chains"

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createMock(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;)Ljava/lang/Object;
    .locals 1
    .param p2, "handler"    # Lorg/mockito/invocation/MockHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;",
            "Lorg/mockito/invocation/MockHandler;",
            ")TT;"
        }
    .end annotation

    .line 330
    .local p1, "settings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->doCreateMock(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createMockType(Lorg/mockito/mock/MockCreationSettings;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation

    .line 391
    .local p1, "settings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->bytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

    .line 393
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v1

    .line 394
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getExtraInterfaces()Ljava/util/Set;

    move-result-object v2

    .line 395
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getSerializableMode()Lorg/mockito/mock/SerializableMode;

    move-result-object v3

    .line 396
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->isStripAnnotations()Z

    move-result v4

    .line 392
    invoke-static {v1, v2, v3, v4}, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->withMockFeatures(Ljava/lang/Class;Ljava/util/Set;Lorg/mockito/mock/SerializableMode;Z)Lorg/mockito/internal/creation/bytebuddy/MockFeatures;

    move-result-object v1

    .line 391
    invoke-interface {v0, v1}, Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;->mockClass(Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "bytecodeGenerationFailed":Ljava/lang/Exception;
    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->prettifyFailure(Lorg/mockito/mock/MockCreationSettings;Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public createSpy(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;Ljava/lang/Object;)Ljava/util/Optional;
    .locals 2
    .param p2, "handler"    # Lorg/mockito/invocation/MockHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;",
            "Lorg/mockito/invocation/MockHandler;",
            "TT;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 336
    .local p1, "settings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<TT;>;"
    .local p3, "object":Ljava/lang/Object;, "TT;"
    if-eqz p3, :cond_0

    .line 339
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->currentSpied:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 341
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->doCreateMock(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->currentSpied:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 341
    return-object v0

    .line 343
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->currentSpied:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    throw v0

    .line 337
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/misusing/MockitoConfigurationException;

    const-string v1, "Spy instance must not be null"

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/MockitoConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createStaticMock(Ljava/lang/Class;Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;)Lorg/mockito/plugins/MockMaker$StaticMockControl;
    .locals 8
    .param p3, "handler"    # Lorg/mockito/invocation/MockHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;",
            "Lorg/mockito/invocation/MockHandler;",
            ")",
            "Lorg/mockito/plugins/MockMaker$StaticMockControl<",
            "TT;>;"
        }
    .end annotation

    .line 547
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "settings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<TT;>;"
    const-class v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-eq p1, v0, :cond_2

    .line 551
    const-class v0, Ljava/lang/Thread;

    if-eq p1, v0, :cond_1

    const-class v0, Ljava/lang/System;

    if-eq p1, v0, :cond_1

    const-class v0, Ljava/util/Arrays;

    if-eq p1, v0, :cond_1

    const-class v0, Ljava/lang/ClassLoader;

    .line 554
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 561
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->bytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

    invoke-interface {v0, p1}, Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;->mockClassStatic(Ljava/lang/Class;)V

    .line 563
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->mockedStatics:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;

    invoke-virtual {v0}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 564
    .local v0, "interceptors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;>;"
    if-nez v0, :cond_0

    .line 565
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    move-object v0, v1

    .line 566
    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->mockedStatics:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;

    invoke-virtual {v1, v0}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->set(Ljava/lang/Object;)V

    .line 569
    :cond_0
    new-instance v1, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl;-><init>(Ljava/lang/Class;Ljava/util/Map;Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$1;)V

    return-object v1

    .line 555
    .end local v0    # "interceptors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;>;"
    :cond_1
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It is not possible to mock static methods of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 557
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to avoid interfering with class loading what leads to infinite loops"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_2
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "It is not possible to mock static methods of ConcurrentHashMap to avoid infinitive loops within Mockito\'s implementation of static mock handling"

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;
    .locals 3
    .param p1, "mock"    # Ljava/lang/Object;

    .line 459
    instance-of v0, p1, Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->mockedStatics:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;

    invoke-virtual {v0}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 461
    .local v0, "interceptors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    move-object v0, v2

    .line 462
    .local v0, "interceptor":Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;
    goto :goto_1

    .line 463
    .end local v0    # "interceptor":Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;
    :cond_1
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->mocks:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    .line 465
    .restart local v0    # "interceptor":Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;
    :goto_1
    if-nez v0, :cond_2

    .line 466
    return-object v1

    .line 468
    :cond_2
    iget-object v1, v0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->handler:Lorg/mockito/invocation/MockHandler;

    return-object v1
.end method

.method public isTypeMockable(Ljava/lang/Class;)Lorg/mockito/plugins/MockMaker$TypeMockability;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/plugins/MockMaker$TypeMockability;"
        }
    .end annotation

    .line 522
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$1;

    invoke-direct {v0, p0, p1}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$1;-><init>(Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;Ljava/lang/Class;)V

    return-object v0
.end method

.method synthetic lambda$new$2$org-mockito-internal-creation-bytebuddy-InlineDelegateByteBuddyMockMaker(Ljava/lang/ThreadLocal;Ljava/lang/ThreadLocal;Ljava/lang/Class;)Z
    .locals 4
    .param p1, "isSuspended"    # Ljava/lang/ThreadLocal;
    .param p2, "currentConstruction"    # Ljava/lang/ThreadLocal;
    .param p3, "type"    # Ljava/lang/Class;

    .line 258
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 259
    return v1

    .line 260
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->mockitoConstruction:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->mockedConstruction:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;

    invoke-virtual {v0}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 264
    .local v0, "interceptors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;*>;"
    if-eqz v0, :cond_2

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 265
    invoke-virtual {p2, p3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 266
    return v2

    .line 268
    :cond_2
    return v1

    .line 261
    .end local v0    # "interceptors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;*>;"
    :cond_3
    :goto_0
    return v2
.end method

.method synthetic lambda$new$3$org-mockito-internal-creation-bytebuddy-InlineDelegateByteBuddyMockMaker(Ljava/lang/ThreadLocal;Ljava/lang/ThreadLocal;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "isSuspended"    # Ljava/lang/ThreadLocal;
    .param p2, "currentConstruction"    # Ljava/lang/ThreadLocal;
    .param p3, "type"    # Ljava/lang/Class;
    .param p4, "object"    # Ljava/lang/Object;
    .param p5, "arguments"    # [Ljava/lang/Object;
    .param p6, "parameterTypeNames"    # [Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->mockitoConstruction:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    .line 297
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 273
    const/4 v2, 0x0

    .line 312
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 273
    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 274
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->currentSpied:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    .line 275
    .local v0, "spy":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 276
    return-object v3

    .line 277
    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 278
    return-object v0

    .line 280
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 283
    :try_start_0
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected spy for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 285
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on instance of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 287
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 288
    instance-of v5, p4, Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    move-object v3, p4

    check-cast v3, Ljava/lang/Throwable;

    :cond_2
    invoke-direct {v1, v4, v3}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "spy":Ljava/lang/Object;
    .end local p1    # "isSuspended":Ljava/lang/ThreadLocal;
    .end local p2    # "currentConstruction":Ljava/lang/ThreadLocal;
    .end local p3    # "type":Ljava/lang/Class;
    .end local p4    # "object":Ljava/lang/Object;
    .end local p5    # "arguments":[Ljava/lang/Object;
    .end local p6    # "parameterTypeNames":[Ljava/lang/String;
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    .restart local v0    # "spy":Ljava/lang/Object;
    .restart local p1    # "isSuspended":Ljava/lang/ThreadLocal;
    .restart local p2    # "currentConstruction":Ljava/lang/ThreadLocal;
    .restart local p3    # "type":Ljava/lang/Class;
    .restart local p4    # "object":Ljava/lang/Object;
    .restart local p5    # "arguments":[Ljava/lang/Object;
    .restart local p6    # "parameterTypeNames":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v1

    .line 293
    .end local v0    # "spy":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p3, :cond_4

    .line 294
    return-object v3

    .line 296
    :cond_4
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->remove()V

    .line 297
    invoke-virtual {p1, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 299
    :try_start_1
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->mockedConstruction:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;

    .line 300
    invoke-virtual {v0}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 301
    .local v0, "interceptors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/function/BiConsumer<Ljava/lang/Object;Lorg/mockito/MockedConstruction$Context;>;>;"
    if-eqz v0, :cond_5

    .line 302
    nop

    .line 303
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/BiConsumer;

    .line 304
    .local v1, "interceptor":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Object;Lorg/mockito/MockedConstruction$Context;>;"
    if-eqz v1, :cond_5

    .line 305
    new-instance v4, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockContext;

    .line 308
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, p5, v5, p6, v3}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockContext;-><init>([Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/String;Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$1;)V

    .line 305
    invoke-interface {v1, p4, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 312
    .end local v0    # "interceptors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/function/BiConsumer<Ljava/lang/Object;Lorg/mockito/MockedConstruction$Context;>;>;"
    .end local v1    # "interceptor":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Object;Lorg/mockito/MockedConstruction$Context;>;"
    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 313
    nop

    .line 314
    return-object v3

    .line 312
    :catchall_1
    move-exception v0

    invoke-virtual {p1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v0
.end method

.method synthetic lambda$newInstance$4$org-mockito-internal-creation-bytebuddy-InlineDelegateByteBuddyMockMaker(Lorg/mockito/plugins/MemberAccessor$ConstructionDispatcher;)Ljava/lang/Object;
    .locals 3
    .param p1, "callback"    # Lorg/mockito/plugins/MemberAccessor$ConstructionDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 627
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->mockitoConstruction:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 629
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Lorg/mockito/plugins/MemberAccessor$ConstructionDispatcher;->newInstance()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->mockitoConstruction:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 629
    return-object v1

    .line 631
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->mockitoConstruction:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v1
.end method

.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mockito/creation/instance/InstantiationException;
        }
    .end annotation

    .line 604
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 605
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    array-length v1, v0

    if-eqz v1, :cond_3

    .line 608
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 609
    .local v2, "selected":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 610
    .local v5, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 611
    move-object v2, v5

    .line 612
    goto :goto_1

    .line 609
    .end local v5    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 615
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 616
    .local v3, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v4, v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 617
    .local v4, "arguments":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 618
    .local v5, "index":I
    array-length v6, v3

    :goto_2
    if-ge v1, v6, :cond_2

    aget-object v7, v3, v1

    .line 619
    .local v7, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "index":I
    .local v8, "index":I
    invoke-direct {p0, v7}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->makeStandardArgument(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v4, v5

    .line 618
    .end local v7    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v1, v1, 0x1

    move v5, v8

    goto :goto_2

    .line 621
    .end local v8    # "index":I
    .restart local v5    # "index":I
    :cond_2
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getMemberAccessor()Lorg/mockito/plugins/MemberAccessor;

    move-result-object v1

    .line 623
    .local v1, "accessor":Lorg/mockito/plugins/MemberAccessor;
    :try_start_0
    new-instance v6, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda0;-><init>(Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;)V

    .line 624
    invoke-interface {v1, v2, v6, v4}, Lorg/mockito/plugins/MemberAccessor;->newInstance(Ljava/lang/reflect/Constructor;Lorg/mockito/plugins/MemberAccessor$OnConstruction;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    return-object v6

    .line 635
    :catch_0
    move-exception v6

    .line 636
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Lorg/mockito/creation/instance/InstantiationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not instantiate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lorg/mockito/creation/instance/InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 606
    .end local v1    # "accessor":Lorg/mockito/plugins/MemberAccessor;
    .end local v2    # "selected":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v4    # "arguments":[Ljava/lang/Object;
    .end local v5    # "index":I
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v1, Lorg/mockito/creation/instance/InstantiationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not define a constructor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mockito/creation/instance/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resetMock(Ljava/lang/Object;Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 5
    .param p1, "mock"    # Ljava/lang/Object;
    .param p2, "newHandler"    # Lorg/mockito/invocation/MockHandler;
    .param p3, "settings"    # Lorg/mockito/mock/MockCreationSettings;

    .line 474
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    invoke-direct {v0, p2, p3}, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;-><init>(Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V

    .line 476
    .local v0, "mockMethodInterceptor":Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;
    instance-of v1, p1, Ljava/lang/Class;

    const-string v2, "Cannot reset "

    if-eqz v1, :cond_1

    .line 477
    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->mockedStatics:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;

    invoke-virtual {v1}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 478
    .local v1, "interceptors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 484
    move-object v2, p1

    check-cast v2, Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .end local v1    # "interceptors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;>;"
    goto :goto_0

    .line 479
    .restart local v1    # "interceptors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;>;"
    :cond_0
    new-instance v3, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " which is not currently registered as a static mock"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 486
    .end local v1    # "interceptors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;>;"
    :cond_1
    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->mocks:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v1, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 490
    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->mocks:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v1, p1, v0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    instance-of v1, p1, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    if-eqz v1, :cond_2

    .line 492
    move-object v1, p1

    check-cast v1, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    invoke-interface {v1, v0}, Lorg/mockito/internal/creation/bytebuddy/MockAccess;->setMockitoInterceptor(Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;)V

    .line 495
    :cond_2
    :goto_0
    return-void

    .line 487
    :cond_3
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " which is not currently registered as a mock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
