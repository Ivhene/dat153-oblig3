.class public Lorg/checkerframework/framework/stub/StubTypes;
.super Ljava/lang/Object;
.source "StubTypes.java"


# instance fields
.field private final annotatedJdkVersion:Ljava/lang/String;

.field private final declAnnosFromStubFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;"
        }
    .end annotation
.end field

.field private final factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

.field private final jdkStubFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final jdkStubFilesJar:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parsing:Z

.field private final shouldParseJdk:Z

.field private final typesFromStubFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/Element;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 349
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 5
    .param p1, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/stub/StubTypes;->jdkStubFiles:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/stub/StubTypes;->jdkStubFilesJar:Ljava/util/Map;

    .line 77
    iput-object p1, p0, Lorg/checkerframework/framework/stub/StubTypes;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/stub/StubTypes;->typesFromStubFiles:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/stub/StubTypes;->declAnnosFromStubFiles:Ljava/util/Map;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/framework/stub/StubTypes;->parsing:Z

    .line 81
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/javacutil/PluginUtil;->getReleaseValue(Ljavax/annotation/processing/ProcessingEnvironment;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "release":Ljava/lang/String;
    nop

    .line 83
    if-eqz v1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/checkerframework/javacutil/PluginUtil;->getJreVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lorg/checkerframework/framework/stub/StubTypes;->annotatedJdkVersion:Ljava/lang/String;

    .line 85
    nop

    .line 86
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/checkerframework/framework/util/CFContext;->getChecker()Lorg/checkerframework/framework/source/SourceChecker;

    move-result-object v3

    const-string v4, "ignorejdkastub"

    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/source/SourceChecker;->hasOption(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 87
    invoke-static {}, Lorg/checkerframework/javacutil/PluginUtil;->getJreVersion()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 88
    const-string v3, "11"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    nop

    :goto_1
    iput-boolean v0, p0, Lorg/checkerframework/framework/stub/StubTypes;->shouldParseJdk:Z

    .line 89
    return-void
.end method

.method private getJarURLConnectionToJdk()Ljava/net/JarURLConnection;
    .locals 5

    .line 389
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubTypes;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/jdk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubTypes;->annotatedJdkVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 392
    .local v0, "resourceURL":Ljava/net/URL;
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/JarURLConnection;

    .line 395
    .local v1, "connection":Ljava/net/JarURLConnection;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/JarURLConnection;->setDefaultUseCaches(Z)V

    .line 396
    invoke-virtual {v1, v2}, Ljava/net/JarURLConnection;->setUseCaches(Z)V

    .line 398
    invoke-virtual {v1}, Ljava/net/JarURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    nop

    .line 403
    return-object v1

    .line 399
    .end local v1    # "connection":Ljava/net/JarURLConnection;
    :catch_0
    move-exception v1

    .line 400
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot open a connection to the Jar file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 401
    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getOuterMostEnclosingClass(Ljavax/lang/model/element/Element;)Ljava/lang/String;
    .locals 4
    .param p1, "e"    # Ljavax/lang/model/element/Element;

    .line 316
    invoke-static {p1}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingClass(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 317
    .local v0, "enclosingClass":Ljavax/lang/model/element/TypeElement;
    if-nez v0, :cond_0

    .line 318
    const/4 v1, 0x0

    return-object v1

    .line 321
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    .line 322
    .local v1, "element":Ljavax/lang/model/element/Element;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    if-ne v2, v3, :cond_1

    .line 323
    goto :goto_1

    .line 325
    :cond_1
    invoke-static {v1}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingClass(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v2

    .line 326
    .local v2, "t":Ljavax/lang/model/element/TypeElement;
    if-nez v2, :cond_2

    .line 327
    goto :goto_1

    .line 329
    :cond_2
    move-object v0, v2

    .line 330
    .end local v1    # "element":Ljavax/lang/model/element/Element;
    .end local v2    # "t":Ljavax/lang/model/element/TypeElement;
    goto :goto_0

    .line 331
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$prepJdkFromFile$0(Ljava/nio/file/Path;)Z
    .locals 3
    .param p0, "p"    # Ljava/nio/file/Path;

    .line 452
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".java"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private parseEnclosingClass(Ljavax/lang/model/element/Element;)V
    .locals 2
    .param p1, "e"    # Ljavax/lang/model/element/Element;

    .line 295
    iget-boolean v0, p0, Lorg/checkerframework/framework/stub/StubTypes;->shouldParseJdk:Z

    if-nez v0, :cond_0

    .line 296
    return-void

    .line 298
    :cond_0
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/stub/StubTypes;->getOuterMostEnclosingClass(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 300
    return-void

    .line 302
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubTypes;->jdkStubFiles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubTypes;->jdkStubFiles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    invoke-direct {p0, v1}, Lorg/checkerframework/framework/stub/StubTypes;->parseStubFile(Ljava/nio/file/Path;)V

    .line 304
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubTypes;->jdkStubFiles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 305
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubTypes;->jdkStubFilesJar:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 306
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubTypes;->jdkStubFilesJar:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/checkerframework/framework/stub/StubTypes;->parseJarEntry(Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubTypes;->jdkStubFilesJar:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_3
    :goto_0
    return-void
.end method

.method private parseJarEntry(Ljava/lang/String;)V
    .locals 10
    .param p1, "jarEntryName"    # Ljava/lang/String;

    .line 362
    invoke-direct {p0}, Lorg/checkerframework/framework/stub/StubTypes;->getJarURLConnectionToJdk()Ljava/net/JarURLConnection;

    move-result-object v0

    .line 363
    .local v0, "connection":Ljava/net/JarURLConnection;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/checkerframework/framework/stub/StubTypes;->parsing:Z

    .line 364
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/checkerframework/javacutil/BugInCF; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 367
    .local v2, "jarFile":Ljava/util/jar/JarFile;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    .local v5, "jdkStub":Ljava/io/InputStream;
    nop

    .line 371
    :try_start_2
    iget-object v6, p0, Lorg/checkerframework/framework/stub/StubTypes;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 375
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v7

    iget-object v8, p0, Lorg/checkerframework/framework/stub/StubTypes;->typesFromStubFiles:Ljava/util/Map;

    iget-object v9, p0, Lorg/checkerframework/framework/stub/StubTypes;->declAnnosFromStubFiles:Ljava/util/Map;

    .line 371
    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lorg/checkerframework/framework/stub/StubParser;->parseJdkFileAsStub(Ljava/lang/String;Ljava/io/InputStream;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 378
    .end local v5    # "jdkStub":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    :try_start_3
    invoke-static {v3, v2}, Lorg/checkerframework/framework/stub/StubTypes;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/checkerframework/javacutil/BugInCF; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 383
    .end local v2    # "jarFile":Ljava/util/jar/JarFile;
    :cond_0
    iput-boolean v1, p0, Lorg/checkerframework/framework/stub/StubTypes;->parsing:Z

    .line 384
    nop

    .line 385
    return-void

    .line 364
    .restart local v2    # "jarFile":Ljava/util/jar/JarFile;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 368
    :catch_0
    move-exception v3

    .line 369
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v4, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot open the jdk stub file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "connection":Ljava/net/JarURLConnection;
    .end local v2    # "jarFile":Ljava/util/jar/JarFile;
    .end local p1    # "jarEntryName":Ljava/lang/String;
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 364
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 378
    .restart local v0    # "connection":Ljava/net/JarURLConnection;
    .restart local v2    # "jarFile":Ljava/util/jar/JarFile;
    .restart local p1    # "jarEntryName":Ljava/lang/String;
    :catchall_1
    move-exception v4

    if-eqz v2, :cond_1

    :try_start_6
    invoke-static {v3, v2}, Lorg/checkerframework/framework/stub/StubTypes;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0    # "connection":Ljava/net/JarURLConnection;
    .end local p1    # "jarEntryName":Ljava/lang/String;
    :cond_1
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/checkerframework/javacutil/BugInCF; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 383
    .end local v2    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v0    # "connection":Ljava/net/JarURLConnection;
    .restart local p1    # "jarEntryName":Ljava/lang/String;
    :catchall_2
    move-exception v2

    goto :goto_1

    .line 380
    :catch_1
    move-exception v2

    .line 381
    .local v2, "e":Lorg/checkerframework/javacutil/BugInCF;
    :try_start_7
    new-instance v3, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/checkerframework/javacutil/BugInCF;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "connection":Ljava/net/JarURLConnection;
    .end local p1    # "jarEntryName":Ljava/lang/String;
    throw v3

    .line 378
    .end local v2    # "e":Lorg/checkerframework/javacutil/BugInCF;
    .restart local v0    # "connection":Ljava/net/JarURLConnection;
    .restart local p1    # "jarEntryName":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 379
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot open the Jar file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getEntryName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "connection":Ljava/net/JarURLConnection;
    .end local p1    # "jarEntryName":Ljava/lang/String;
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 383
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "connection":Ljava/net/JarURLConnection;
    .restart local p1    # "jarEntryName":Ljava/lang/String;
    :goto_1
    iput-boolean v1, p0, Lorg/checkerframework/framework/stub/StubTypes;->parsing:Z

    throw v2
.end method

.method private parseStubFile(Ljava/nio/file/Path;)V
    .locals 9
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/framework/stub/StubTypes;->parsing:Z

    .line 341
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 342
    .local v1, "jdkStub":Ljava/io/FileInputStream;
    nop

    .line 343
    :try_start_1
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lorg/checkerframework/framework/stub/StubTypes;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 346
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v6

    iget-object v7, p0, Lorg/checkerframework/framework/stub/StubTypes;->typesFromStubFiles:Ljava/util/Map;

    iget-object v8, p0, Lorg/checkerframework/framework/stub/StubTypes;->declAnnosFromStubFiles:Ljava/util/Map;

    .line 342
    move-object v4, v1

    invoke-static/range {v3 .. v8}, Lorg/checkerframework/framework/stub/StubParser;->parseJdkFileAsStub(Ljava/lang/String;Ljava/io/InputStream;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    const/4 v2, 0x0

    :try_start_2
    invoke-static {v2, v1}, Lorg/checkerframework/framework/stub/StubTypes;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 352
    .end local v1    # "jdkStub":Ljava/io/FileInputStream;
    iput-boolean v0, p0, Lorg/checkerframework/framework/stub/StubTypes;->parsing:Z

    .line 353
    nop

    .line 354
    return-void

    .line 341
    .restart local v1    # "jdkStub":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v2

    .end local v1    # "jdkStub":Ljava/io/FileInputStream;
    .end local p1    # "path":Ljava/nio/file/Path;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 349
    .restart local v1    # "jdkStub":Ljava/io/FileInputStream;
    .restart local p1    # "path":Ljava/nio/file/Path;
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v2, v1}, Lorg/checkerframework/framework/stub/StubTypes;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p1    # "path":Ljava/nio/file/Path;
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 352
    .end local v1    # "jdkStub":Ljava/io/FileInputStream;
    .restart local p1    # "path":Ljava/nio/file/Path;
    :catchall_2
    move-exception v1

    goto :goto_0

    .line 349
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot open the jdk stub file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p1    # "path":Ljava/nio/file/Path;
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 352
    .end local v1    # "e":Ljava/io/IOException;
    .restart local p1    # "path":Ljava/nio/file/Path;
    :goto_0
    iput-boolean v0, p0, Lorg/checkerframework/framework/stub/StubTypes;->parsing:Z

    throw v1
.end method

.method private prepJdkFromFile(Ljava/net/URL;)V
    .locals 10
    .param p1, "resourceURL"    # Ljava/net/URL;

    .line 445
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 448
    .local v0, "root":Ljava/nio/file/Path;
    nop

    .line 450
    const/4 v1, 0x0

    :try_start_1
    new-array v1, v1, [Ljava/nio/file/FileVisitOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 451
    .local v1, "walk":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    :try_start_2
    new-instance v2, Lorg/checkerframework/framework/stub/StubTypes$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/checkerframework/framework/stub/StubTypes$$ExternalSyntheticLambda0;-><init>()V

    .line 452
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 453
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 454
    .local v2, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    .line 455
    .local v4, "path":Ljava/nio/file/Path;
    invoke-interface {v4}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "package-info.java"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 456
    invoke-direct {p0, v4}, Lorg/checkerframework/framework/stub/StubTypes;->parseStubFile(Ljava/nio/file/Path;)V

    .line 457
    goto :goto_0

    .line 459
    :cond_0
    invoke-interface {v0, v4}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v5

    .line 461
    .local v5, "relativePath":Ljava/nio/file/Path;
    invoke-interface {v5}, Ljava/nio/file/Path;->getNameCount()I

    move-result v6

    const/4 v7, 0x4

    invoke-interface {v5, v7, v6}, Ljava/nio/file/Path;->subpath(II)Ljava/nio/file/Path;

    move-result-object v6

    .line 462
    .local v6, "savepath":Ljava/nio/file/Path;
    nop

    .line 463
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".java"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    sget-char v8, Ljava/io/File;->separatorChar:C

    const/16 v9, 0x2e

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 464
    .local v7, "s":Ljava/lang/String;
    iget-object v8, p0, Lorg/checkerframework/framework/stub/StubTypes;->jdkStubFiles:Ljava/util/Map;

    invoke-interface {v8, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 465
    nop

    .end local v4    # "path":Ljava/nio/file/Path;
    .end local v5    # "relativePath":Ljava/nio/file/Path;
    .end local v6    # "savepath":Ljava/nio/file/Path;
    .end local v7    # "s":Ljava/lang/String;
    goto :goto_0

    .line 466
    .end local v2    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :try_start_3
    invoke-static {v2, v1}, Lorg/checkerframework/framework/stub/StubTypes;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 468
    .end local v1    # "walk":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    :cond_2
    nop

    .line 469
    return-void

    .line 450
    .restart local v1    # "walk":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    :catchall_0
    move-exception v2

    .end local v0    # "root":Ljava/nio/file/Path;
    .end local v1    # "walk":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    .end local p1    # "resourceURL":Ljava/net/URL;
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 466
    .restart local v0    # "root":Ljava/nio/file/Path;
    .restart local v1    # "walk":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    .restart local p1    # "resourceURL":Ljava/net/URL;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_3

    :try_start_5
    invoke-static {v2, v1}, Lorg/checkerframework/framework/stub/StubTypes;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0    # "root":Ljava/nio/file/Path;
    .end local p1    # "resourceURL":Ljava/net/URL;
    :cond_3
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v1    # "walk":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    .restart local v0    # "root":Ljava/nio/file/Path;
    .restart local p1    # "resourceURL":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 467
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    const-string v3, "File Not Found"

    invoke-direct {v2, v3, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 446
    .end local v0    # "root":Ljava/nio/file/Path;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 447
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can parse URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private prepJdkFromJar(Ljava/net/URL;)V
    .locals 11
    .param p1, "resourceURL"    # Ljava/net/URL;

    .line 478
    const-string v0, "/share/classes/"

    const-string v1, ".java"

    invoke-direct {p0}, Lorg/checkerframework/framework/stub/StubTypes;->getJarURLConnectionToJdk()Ljava/net/JarURLConnection;

    move-result-object v2

    .line 480
    .local v2, "connection":Ljava/net/JarURLConnection;
    :try_start_0
    invoke-virtual {v2}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    .local v3, "jarFile":Ljava/util/jar/JarFile;
    :try_start_1
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/jar/JarEntry;

    .line 483
    .local v5, "je":Ljava/util/jar/JarEntry;
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    .line 484
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 485
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "jdk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/checkerframework/framework/stub/StubTypes;->annotatedJdkVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 486
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 487
    .local v6, "jeNAme":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 488
    .local v7, "index":I
    nop

    .line 489
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    .line 490
    invoke-virtual {v8, v1, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 491
    const/16 v9, 0x2f

    const/16 v10, 0x2e

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    .line 492
    .local v8, "shortName":Ljava/lang/String;
    iget-object v9, p0, Lorg/checkerframework/framework/stub/StubTypes;->jdkStubFilesJar:Ljava/util/Map;

    invoke-interface {v9, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    const-string v9, "package-info.java"

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 494
    invoke-direct {p0, v6}, Lorg/checkerframework/framework/stub/StubTypes;->parseJarEntry(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    .end local v5    # "je":Ljava/util/jar/JarEntry;
    .end local v6    # "jeNAme":Ljava/lang/String;
    .end local v7    # "index":I
    .end local v8    # "shortName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 498
    :cond_1
    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0, v3}, Lorg/checkerframework/framework/stub/StubTypes;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 500
    .end local v3    # "jarFile":Ljava/util/jar/JarFile;
    :cond_2
    nop

    .line 501
    return-void

    .line 480
    .restart local v3    # "jarFile":Ljava/util/jar/JarFile;
    :catchall_0
    move-exception v0

    .end local v2    # "connection":Ljava/net/JarURLConnection;
    .end local v3    # "jarFile":Ljava/util/jar/JarFile;
    .end local p1    # "resourceURL":Ljava/net/URL;
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 498
    .restart local v2    # "connection":Ljava/net/JarURLConnection;
    .restart local v3    # "jarFile":Ljava/util/jar/JarFile;
    .restart local p1    # "resourceURL":Ljava/net/URL;
    :catchall_1
    move-exception v1

    if-eqz v3, :cond_3

    :try_start_4
    invoke-static {v0, v3}, Lorg/checkerframework/framework/stub/StubTypes;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v2    # "connection":Ljava/net/JarURLConnection;
    .end local p1    # "resourceURL":Ljava/net/URL;
    :cond_3
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .end local v3    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v2    # "connection":Ljava/net/JarURLConnection;
    .restart local p1    # "resourceURL":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot open the Jar file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private prepJdkStubs()V
    .locals 6

    .line 411
    iget-boolean v0, p0, Lorg/checkerframework/framework/stub/StubTypes;->shouldParseJdk:Z

    if-nez v0, :cond_0

    .line 412
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubTypes;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/jdk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubTypes;->annotatedJdkVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 415
    .local v0, "resourceURL":Ljava/net/URL;
    const-string v1, "JDK not found"

    const-string v2, "nocheckjdk"

    const-string v3, "permitMissingJdk"

    if-nez v0, :cond_3

    .line 416
    iget-object v4, p0, Lorg/checkerframework/framework/stub/StubTypes;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/checkerframework/framework/util/CFContext;->getChecker()Lorg/checkerframework/framework/source/SourceChecker;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/checkerframework/framework/source/SourceChecker;->hasOption(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/checkerframework/framework/stub/StubTypes;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 418
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/checkerframework/framework/util/CFContext;->getChecker()Lorg/checkerframework/framework/source/SourceChecker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/checkerframework/framework/source/SourceChecker;->hasOption(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 421
    :cond_1
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    invoke-direct {v2, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2

    .line 419
    :cond_2
    :goto_0
    return-void

    .line 422
    :cond_3
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    const-string v5, "jar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 423
    invoke-direct {p0, v0}, Lorg/checkerframework/framework/stub/StubTypes;->prepJdkFromJar(Ljava/net/URL;)V

    goto :goto_1

    .line 424
    :cond_4
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 425
    invoke-direct {p0, v0}, Lorg/checkerframework/framework/stub/StubTypes;->prepJdkFromFile(Ljava/net/URL;)V

    .line 434
    :goto_1
    return-void

    .line 427
    :cond_5
    iget-object v4, p0, Lorg/checkerframework/framework/stub/StubTypes;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/checkerframework/framework/util/CFContext;->getChecker()Lorg/checkerframework/framework/source/SourceChecker;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/checkerframework/framework/source/SourceChecker;->hasOption(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lorg/checkerframework/framework/stub/StubTypes;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 429
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/checkerframework/framework/util/CFContext;->getChecker()Lorg/checkerframework/framework/source/SourceChecker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/checkerframework/framework/source/SourceChecker;->hasOption(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 432
    :cond_6
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    invoke-direct {v2, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2

    .line 430
    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public getAnnotatedTypeMirror(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "e"    # Ljavax/lang/model/element/Element;

    .line 257
    iget-boolean v0, p0, Lorg/checkerframework/framework/stub/StubTypes;->parsing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 258
    return-object v1

    .line 260
    :cond_0
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/stub/StubTypes;->parseEnclosingClass(Ljavax/lang/model/element/Element;)V

    .line 261
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubTypes;->typesFromStubFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 262
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getDeclAnnotation(Ljavax/lang/model/element/Element;)Ljava/util/Set;
    .locals 2
    .param p1, "elt"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            ")",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 276
    iget-boolean v0, p0, Lorg/checkerframework/framework/stub/StubTypes;->parsing:Z

    if-eqz v0, :cond_0

    .line 277
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 280
    :cond_0
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/stub/StubTypes;->parseEnclosingClass(Ljavax/lang/model/element/Element;)V

    .line 281
    invoke-static {p1}, Lorg/checkerframework/javacutil/ElementUtils;->getVerboseName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "eltName":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubTypes;->declAnnosFromStubFiles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubTypes;->declAnnosFromStubFiles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    return-object v1

    .line 285
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public isParsing()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lorg/checkerframework/framework/stub/StubTypes;->parsing:Z

    return v0
.end method

.method public parseStubFiles()V
    .locals 23

    .line 117
    move-object/from16 v1, p0

    const/4 v0, 0x1

    iput-boolean v0, v1, Lorg/checkerframework/framework/stub/StubTypes;->parsing:Z

    .line 119
    iget-object v2, v1, Lorg/checkerframework/framework/stub/StubTypes;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/checkerframework/framework/util/CFContext;->getChecker()Lorg/checkerframework/framework/source/SourceChecker;

    move-result-object v2

    .line 120
    .local v2, "checker":Lorg/checkerframework/framework/source/SourceChecker;
    iget-object v3, v1, Lorg/checkerframework/framework/stub/StubTypes;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v3

    .line 123
    .local v3, "processingEnv":Ljavax/annotation/processing/ProcessingEnvironment;
    const-string v4, "ignorejdkastub"

    invoke-virtual {v2, v4}, Lorg/checkerframework/framework/source/SourceChecker;->hasOption(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 124
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "jdk.astub"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 125
    .local v10, "jdkStubIn":Ljava/io/InputStream;
    if-eqz v10, :cond_0

    .line 126
    nop

    .line 127
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v1, Lorg/checkerframework/framework/stub/StubTypes;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-object v8, v1, Lorg/checkerframework/framework/stub/StubTypes;->typesFromStubFiles:Ljava/util/Map;

    iget-object v9, v1, Lorg/checkerframework/framework/stub/StubTypes;->declAnnosFromStubFiles:Ljava/util/Map;

    .line 126
    move-object v5, v10

    move-object v7, v3

    invoke-static/range {v4 .. v9}, Lorg/checkerframework/framework/stub/StubParser;->parse(Ljava/lang/String;Ljava/io/InputStream;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/util/Map;Ljava/util/Map;)V

    .line 134
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jdk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lorg/checkerframework/framework/stub/StubTypes;->annotatedJdkVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".astub"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 135
    .local v11, "jdkVersionStub":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 136
    .local v12, "jdkVersionStubIn":Ljava/io/InputStream;
    if-eqz v12, :cond_1

    .line 137
    nop

    .line 138
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v1, Lorg/checkerframework/framework/stub/StubTypes;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-object v8, v1, Lorg/checkerframework/framework/stub/StubTypes;->typesFromStubFiles:Ljava/util/Map;

    iget-object v9, v1, Lorg/checkerframework/framework/stub/StubTypes;->declAnnosFromStubFiles:Ljava/util/Map;

    .line 137
    move-object v5, v12

    move-object v7, v3

    invoke-static/range {v4 .. v9}, Lorg/checkerframework/framework/stub/StubParser;->parse(Ljava/lang/String;Ljava/io/InputStream;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/util/Map;Ljava/util/Map;)V

    .line 145
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/checkerframework/framework/stub/StubTypes;->prepJdkStubs()V

    .line 148
    iput-boolean v0, v1, Lorg/checkerframework/framework/stub/StubTypes;->parsing:Z

    .line 153
    .end local v10    # "jdkStubIn":Ljava/io/InputStream;
    .end local v11    # "jdkVersionStub":Ljava/lang/String;
    .end local v12    # "jdkVersionStubIn":Ljava/io/InputStream;
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 156
    .local v10, "allStubFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v4, Lorg/checkerframework/framework/qual/StubFiles;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/checkerframework/framework/qual/StubFiles;

    .line 157
    .local v11, "stubFilesAnnotation":Lorg/checkerframework/framework/qual/StubFiles;
    if-eqz v11, :cond_3

    .line 158
    invoke-interface {v11}, Lorg/checkerframework/framework/qual/StubFiles;->value()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 162
    :cond_3
    const-string v0, "stubs"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 163
    .local v12, "stubsProperty":Ljava/lang/String;
    if-eqz v12, :cond_4

    .line 164
    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 168
    :cond_4
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 169
    .local v13, "stubEnvVar":Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 170
    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 174
    :cond_5
    invoke-virtual {v2, v0}, Lorg/checkerframework/framework/source/SourceChecker;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 175
    .local v14, "stubsOption":Ljava/lang/String;
    if-eqz v14, :cond_6

    .line 176
    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 180
    :cond_6
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    .local v0, "stubPath":Ljava/lang/String;
    const-string v4, "test.src"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 183
    .local v8, "base":Ljava/lang/String;
    move-object v4, v0

    .line 184
    .local v4, "stubPathFull":Ljava/lang/String;
    const-string v5, "/"

    if-eqz v8, :cond_7

    .line 185
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    goto :goto_1

    .line 184
    :cond_7
    move-object v7, v4

    .line 187
    .end local v4    # "stubPathFull":Ljava/lang/String;
    .local v7, "stubPathFull":Ljava/lang/String;
    :goto_1
    invoke-static {v7}, Lorg/checkerframework/framework/stub/StubUtil;->allStubFiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 188
    .local v16, "stubs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/stub/StubResource;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 191
    const-string v4, "checker.jar/"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .line 193
    .local v17, "in":Ljava/io/InputStream;
    if-nez v17, :cond_a

    .line 195
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 196
    .local v4, "topLevelResource":Ljava/net/URL;
    if-eqz v4, :cond_8

    .line 197
    sget-object v5, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " should be in the same directory as "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 201
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ".class, but is at the top level of a jar file: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v19, v4

    const/4 v9, 0x0

    .end local v4    # "topLevelResource":Ljava/net/URL;
    .local v19, "topLevelResource":Ljava/net/URL;
    new-array v4, v9, [Ljava/lang/Object;

    .line 197
    invoke-virtual {v2, v5, v6, v4}, Lorg/checkerframework/framework/source/SourceChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v9, 0x0

    goto :goto_3

    .line 205
    .end local v19    # "topLevelResource":Ljava/net/URL;
    .restart local v4    # "topLevelResource":Ljava/net/URL;
    :cond_8
    move-object/from16 v19, v4

    .end local v4    # "topLevelResource":Ljava/net/URL;
    .restart local v19    # "topLevelResource":Ljava/net/URL;
    sget-object v4, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Did not find stub file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on classpath or within directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 211
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 212
    const-string v6, ""

    goto :goto_2

    .line 213
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " or at "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    new-array v6, v9, [Ljava/lang/Object;

    .line 205
    invoke-virtual {v2, v4, v5, v6}, Lorg/checkerframework/framework/source/SourceChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    .end local v19    # "topLevelResource":Ljava/net/URL;
    :goto_3
    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v19, v10

    move v10, v9

    goto :goto_4

    .line 216
    :cond_a
    const/4 v9, 0x0

    iget-object v6, v1, Lorg/checkerframework/framework/stub/StubTypes;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-object v5, v1, Lorg/checkerframework/framework/stub/StubTypes;->typesFromStubFiles:Ljava/util/Map;

    iget-object v4, v1, Lorg/checkerframework/framework/stub/StubTypes;->declAnnosFromStubFiles:Ljava/util/Map;

    move-object/from16 v18, v4

    move-object v4, v0

    move-object/from16 v19, v5

    move-object/from16 v5, v17

    move-object/from16 v20, v7

    .end local v7    # "stubPathFull":Ljava/lang/String;
    .local v20, "stubPathFull":Ljava/lang/String;
    move-object v7, v3

    move-object/from16 v21, v8

    .end local v8    # "base":Ljava/lang/String;
    .local v21, "base":Ljava/lang/String;
    move-object/from16 v8, v19

    move-object/from16 v19, v10

    move v10, v9

    .end local v10    # "allStubFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v19, "allStubFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v9, v18

    invoke-static/range {v4 .. v9}, Lorg/checkerframework/framework/stub/StubParser;->parse(Ljava/lang/String;Ljava/io/InputStream;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/util/Map;Ljava/util/Map;)V

    .line 225
    .end local v17    # "in":Ljava/io/InputStream;
    :goto_4
    move-object/from16 v17, v0

    goto :goto_5

    .line 188
    .end local v19    # "allStubFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "stubPathFull":Ljava/lang/String;
    .end local v21    # "base":Ljava/lang/String;
    .restart local v7    # "stubPathFull":Ljava/lang/String;
    .restart local v8    # "base":Ljava/lang/String;
    .restart local v10    # "allStubFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v19, v10

    const/4 v10, 0x0

    .end local v7    # "stubPathFull":Ljava/lang/String;
    .end local v8    # "base":Ljava/lang/String;
    .end local v10    # "allStubFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "allStubFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "stubPathFull":Ljava/lang/String;
    .restart local v21    # "base":Ljava/lang/String;
    move-object/from16 v17, v0

    .line 225
    .end local v0    # "stubPath":Ljava/lang/String;
    .local v17, "stubPath":Ljava/lang/String;
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lorg/checkerframework/framework/stub/StubResource;

    .line 228
    .local v22, "resource":Lorg/checkerframework/framework/stub/StubResource;
    :try_start_0
    invoke-interface/range {v22 .. v22}, Lorg/checkerframework/framework/stub/StubResource;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .local v5, "stubStream":Ljava/io/InputStream;
    nop

    .line 235
    nop

    .line 236
    invoke-interface/range {v22 .. v22}, Lorg/checkerframework/framework/stub/StubResource;->getDescription()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v1, Lorg/checkerframework/framework/stub/StubTypes;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-object v8, v1, Lorg/checkerframework/framework/stub/StubTypes;->typesFromStubFiles:Ljava/util/Map;

    iget-object v9, v1, Lorg/checkerframework/framework/stub/StubTypes;->declAnnosFromStubFiles:Ljava/util/Map;

    .line 235
    move-object v7, v3

    invoke-static/range {v4 .. v9}, Lorg/checkerframework/framework/stub/StubParser;->parse(Ljava/lang/String;Ljava/io/InputStream;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/util/Map;Ljava/util/Map;)V

    .line 242
    .end local v5    # "stubStream":Ljava/io/InputStream;
    .end local v22    # "resource":Lorg/checkerframework/framework/stub/StubResource;
    goto :goto_6

    .line 229
    .restart local v22    # "resource":Lorg/checkerframework/framework/stub/StubResource;
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 230
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not read stub resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 232
    invoke-interface/range {v22 .. v22}, Lorg/checkerframework/framework/stub/StubResource;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    .line 230
    invoke-virtual {v2, v4, v5, v6}, Lorg/checkerframework/framework/source/SourceChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    goto :goto_6

    .line 243
    .end local v0    # "e":Ljava/io/IOException;
    .end local v16    # "stubs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/stub/StubResource;>;"
    .end local v17    # "stubPath":Ljava/lang/String;
    .end local v20    # "stubPathFull":Ljava/lang/String;
    .end local v21    # "base":Ljava/lang/String;
    .end local v22    # "resource":Lorg/checkerframework/framework/stub/StubResource;
    :cond_c
    move-object/from16 v10, v19

    goto/16 :goto_0

    .line 244
    .end local v19    # "allStubFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "allStubFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    move-object/from16 v19, v10

    const/4 v10, 0x0

    .end local v10    # "allStubFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "allStubFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-boolean v10, v1, Lorg/checkerframework/framework/stub/StubTypes;->parsing:Z

    .line 245
    return-void
.end method
