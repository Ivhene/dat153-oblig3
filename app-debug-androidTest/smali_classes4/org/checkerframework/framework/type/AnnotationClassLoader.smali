.class public Lorg/checkerframework/framework/type/AnnotationClassLoader;
.super Ljava/lang/Object;
.source "AnnotationClassLoader.java"


# static fields
.field private static final CLASS_SUFFIX:Ljava/lang/String; = ".class"

.field private static final DOT:C = '.'

.field private static final JAR_SUFFIX:Ljava/lang/String; = ".jar"

.field private static final QUAL_PACKAGE:Ljava/lang/String; = "qual"

.field private static final SLASH:C = '/'


# instance fields
.field protected final checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

.field protected final classLoader:Ljava/net/URLClassLoader;

.field private final fullyQualifiedPackageNameSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final packageName:Ljava/lang/String;

.field private final packageNameWithSlashes:Ljava/lang/String;

.field protected final processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

.field private final resourceURL:Ljava/net/URL;

.field private final supportedBundledAnnotationClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 6
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 114
    invoke-virtual {p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 119
    .local v0, "checkerPackage":Ljava/lang/Package;
    nop

    .line 120
    const-string v1, "qual"

    const/16 v2, 0x2e

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 122
    :cond_0
    nop

    :goto_0
    iput-object v1, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->packageName:Ljava/lang/String;

    .line 126
    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->packageNameWithSlashes:Ljava/lang/String;

    .line 131
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->fullyQualifiedPackageNameSegments:Ljava/util/List;

    .line 135
    nop

    .line 137
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 138
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 135
    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    invoke-direct {p0}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->getClassLoader()Ljava/net/URLClassLoader;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->classLoader:Ljava/net/URLClassLoader;

    .line 142
    if-eqz v1, :cond_1

    .line 146
    invoke-virtual {v1, v3}, Ljava/net/URLClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->resourceURL:Ljava/net/URL;

    goto :goto_1

    .line 157
    :cond_1
    invoke-direct {p0}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->getURLFromClasspaths()Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->resourceURL:Ljava/net/URL;

    .line 160
    :goto_1
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->supportedBundledAnnotationClasses:Ljava/util/Set;

    .line 162
    invoke-direct {p0}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->loadBundledAnnotationClasses()V

    .line 163
    return-void
.end method

.method private final checkDirForPackage(Ljava/io/File;Ljava/util/Iterator;)Z
    .locals 7
    .param p1, "currentDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 314
    .local p2, "pkgNames":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    const/4 v0, 0x1

    return v0

    .line 318
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 324
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 328
    .local v1, "currentPackageDirName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 329
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 332
    invoke-direct {p0, v5, p2}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->checkDirForPackage(Ljava/io/File;Ljava/util/Iterator;)Z

    move-result v0

    return v0

    .line 328
    .end local v5    # "file":Ljava/io/File;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 338
    :cond_3
    return v0

    .line 319
    .end local v1    # "currentPackageDirName":Ljava/lang/String;
    :cond_4
    :goto_1
    return v0
.end method

.method private final checkJarForPackage(Ljava/util/jar/JarFile;)Z
    .locals 5
    .param p1, "jar"    # Ljava/util/jar/JarFile;

    .line 270
    invoke-virtual {p1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 273
    .local v0, "jarEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarEntry;

    .line 280
    .local v1, "je":Ljava/util/jar/JarEntry;
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "entryName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->packageNameWithSlashes:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 282
    const/4 v3, 0x1

    return v3

    .line 284
    .end local v1    # "je":Ljava/util/jar/JarEntry;
    .end local v2    # "entryName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 286
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private final containsPackage(Ljava/net/URL;)Z
    .locals 3
    .param p1, "url"    # Ljava/net/URL;

    .line 241
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/JarURLConnection;

    .line 245
    .local v0, "connection":Ljava/net/JarURLConnection;
    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v1

    .line 248
    .local v1, "jarFile":Ljava/util/jar/JarFile;
    invoke-direct {p0, v1}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->checkJarForPackage(Ljava/util/jar/JarFile;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 249
    .end local v0    # "connection":Ljava/net/JarURLConnection;
    .end local v1    # "jarFile":Ljava/util/jar/JarFile;
    :catch_0
    move-exception v0

    .line 251
    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, "rootDir":Ljava/io/File;
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->fullyQualifiedPackageNameSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->checkDirForPackage(Ljava/io/File;Ljava/util/Iterator;)Z

    move-result v1

    return v1

    .line 260
    .end local v0    # "rootDir":Ljava/io/File;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private final getAnnotationNamesFromDirectory(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/util/Set;
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "rootDirectory"    # Ljava/io/File;
    .param p3, "currentDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 639
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 642
    .local v2, "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 645
    .local v3, "rootPath":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 646
    .local v4, "directoryContents":[Ljava/io/File;
    new-instance v5, Lorg/checkerframework/framework/type/AnnotationClassLoader$1;

    invoke-direct {v5, v0}, Lorg/checkerframework/framework/type/AnnotationClassLoader$1;-><init>(Lorg/checkerframework/framework/type/AnnotationClassLoader;)V

    invoke-static {v4, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 654
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_5

    aget-object v8, v4, v7

    .line 655
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 659
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 661
    .local v9, "fullFileName":Ljava/lang/String;
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    .line 663
    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    .line 664
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    .line 662
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 666
    .local v10, "fileName":Ljava/lang/String;
    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    .line 667
    invoke-virtual {v9, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 669
    .local v11, "filePath":Ljava/lang/String;
    const/4 v12, 0x0

    .line 670
    .local v12, "qualPackage":Ljava/lang/String;
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/16 v14, 0x2e

    if-nez v13, :cond_0

    .line 671
    nop

    .line 672
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v11, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 673
    const/16 v15, 0x2f

    invoke-virtual {v13, v15, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    .line 677
    :cond_0
    move-object v13, v10

    .line 678
    .local v13, "annotationName":Ljava/lang/String;
    invoke-virtual {v10, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    const/4 v6, -0x1

    if-eq v15, v6, :cond_1

    .line 679
    invoke-virtual {v10, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v14, 0x0

    invoke-virtual {v10, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 678
    :cond_1
    const/4 v14, 0x0

    .line 683
    :goto_1
    nop

    .line 685
    invoke-static {v12, v13}, Lorg/checkerframework/org/plumelib/reflection/Signatures;->addPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 684
    invoke-static {v1, v6}, Lorg/checkerframework/org/plumelib/reflection/Signatures;->addPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 687
    .local v6, "fullyQualifiedAnnoName":Ljava/lang/String;
    const-string v15, ".class"

    invoke-virtual {v10, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 689
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 691
    .end local v6    # "fullyQualifiedAnnoName":Ljava/lang/String;
    .end local v9    # "fullFileName":Ljava/lang/String;
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v11    # "filePath":Ljava/lang/String;
    .end local v12    # "qualPackage":Ljava/lang/String;
    .end local v13    # "annotationName":Ljava/lang/String;
    :cond_2
    move-object/from16 v6, p2

    goto :goto_2

    :cond_3
    move v14, v6

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 693
    move-object/from16 v6, p2

    invoke-direct {v0, v1, v6, v8}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->getAnnotationNamesFromDirectory(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 691
    :cond_4
    move-object/from16 v6, p2

    .line 654
    .end local v8    # "file":Ljava/io/File;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move v6, v14

    goto/16 :goto_0

    .line 697
    :cond_5
    move-object/from16 v6, p2

    return-object v2
.end method

.method private final getBundledAnnotationNamesFromJar(Ljava/util/jar/JarFile;)Ljava/util/Set;
    .locals 6
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 564
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 568
    .local v0, "annos":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 571
    .local v1, "jarEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 572
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/JarEntry;

    .line 574
    .local v2, "je":Ljava/util/jar/JarEntry;
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".class"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 575
    goto :goto_0

    .line 578
    :cond_1
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/org/plumelib/reflection/Signatures;->classfilenameToBinaryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, "className":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 583
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 585
    .end local v2    # "je":Ljava/util/jar/JarEntry;
    .end local v3    # "className":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 587
    :cond_3
    return-object v0
.end method

.method private final getClassLoader()Ljava/net/URLClassLoader;
    .locals 2

    .line 434
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/InternalUtils;->getClassLoaderForClass(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 435
    .local v0, "result":Ljava/lang/ClassLoader;
    instance-of v1, v0, Ljava/net/URLClassLoader;

    if-eqz v1, :cond_0

    .line 436
    move-object v1, v0

    check-cast v1, Ljava/net/URLClassLoader;

    return-object v1

    .line 439
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private final getClasspaths()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 403
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 406
    .local v0, "paths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "java.ext.dirs"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "extdirs":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 408
    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 412
    :cond_0
    nop

    .line 413
    const-string v2, "java.class.path"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 412
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 416
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->classLoader:Ljava/net/URLClassLoader;

    if-eqz v2, :cond_1

    .line 417
    invoke-virtual {v2}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v2

    .line 418
    .local v2, "urls":[Ljava/net/URL;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 419
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 418
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 423
    .end local v2    # "urls":[Ljava/net/URL;
    .end local v3    # "i":I
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method private final getDirectoryURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 6
    .param p1, "absolutePathToDirectory"    # Ljava/lang/String;

    .line 349
    const/4 v0, 0x0

    .line 352
    .local v0, "directoryURL":Ljava/net/URL;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 359
    goto :goto_0

    .line 353
    :catch_0
    move-exception v1

    .line 354
    .local v1, "e":Ljava/net/MalformedURLException;
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 355
    invoke-interface {v2}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v2

    sget-object v3, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Directory URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is malformed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 356
    invoke-interface {v2, v3, v4}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 361
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :goto_0
    return-object v0
.end method

.method private final getJarURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 6
    .param p1, "absolutePathToJarFile"    # Ljava/lang/String;

    .line 372
    const/4 v0, 0x0

    .line 375
    .local v0, "jarURL":Ljava/net/URL;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jar:file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 380
    goto :goto_0

    .line 376
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Ljava/net/MalformedURLException;
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 378
    invoke-interface {v2}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v2

    sget-object v3, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Jar URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is malformed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 379
    invoke-interface {v2, v3, v4}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 382
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :goto_0
    return-object v0
.end method

.method private final getURLFromClasspaths()Ljava/net/URL;
    .locals 5

    .line 178
    const/4 v0, 0x0

    .line 181
    .local v0, "url":Ljava/net/URL;
    invoke-direct {p0}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->getClasspaths()Ljava/util/Set;

    move-result-object v1

    .line 199
    .local v1, "paths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 201
    .local v3, "path":Ljava/lang/String;
    const-string v4, ".jar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 203
    invoke-direct {p0, v3}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->getJarURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->containsPackage(Ljava/net/URL;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 207
    return-object v0

    .line 211
    :cond_0
    invoke-direct {p0, v3}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->getDirectoryURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->containsPackage(Ljava/net/URL;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 216
    const/16 v2, 0x2f

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 221
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->packageNameWithSlashes:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->getDirectoryURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 223
    return-object v0

    .line 226
    .end local v3    # "path":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 229
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method private loadBundledAnnotationClasses()V
    .locals 5

    .line 486
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->resourceURL:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 487
    return-void

    .line 494
    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 502
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/JarURLConnection;

    .line 506
    .local v0, "connection":Ljava/net/JarURLConnection;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/JarURLConnection;->setDefaultUseCaches(Z)V

    .line 507
    invoke-virtual {v0, v1}, Ljava/net/JarURLConnection;->setUseCaches(Z)V

    .line 510
    invoke-virtual {v0}, Ljava/net/JarURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 515
    nop

    .line 518
    :try_start_1
    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 520
    .local v1, "jarFile":Ljava/util/jar/JarFile;
    :try_start_2
    invoke-direct {p0, v1}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->getBundledAnnotationNamesFromJar(Ljava/util/jar/JarFile;)Ljava/util/Set;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 521
    .local v2, "annotationNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 524
    .end local v1    # "jarFile":Ljava/util/jar/JarFile;
    :cond_1
    nop

    .line 526
    .end local v0    # "connection":Ljava/net/JarURLConnection;
    goto :goto_1

    .line 518
    .end local v2    # "annotationNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "connection":Ljava/net/JarURLConnection;
    .restart local v1    # "jarFile":Ljava/util/jar/JarFile;
    :catchall_0
    move-exception v2

    .end local v0    # "connection":Ljava/net/JarURLConnection;
    .end local v1    # "jarFile":Ljava/util/jar/JarFile;
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 521
    .restart local v0    # "connection":Ljava/net/JarURLConnection;
    .restart local v1    # "jarFile":Ljava/util/jar/JarFile;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_6
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "connection":Ljava/net/JarURLConnection;
    :cond_2
    :goto_0
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .end local v1    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v0    # "connection":Ljava/net/JarURLConnection;
    :catch_0
    move-exception v1

    .line 522
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnnotationClassLoader: cannot open the Jar file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->resourceURL:Ljava/net/URL;

    .line 523
    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2

    .line 511
    .end local v0    # "connection":Ljava/net/JarURLConnection;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 512
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnnotationClassLoader: cannot open a connection to the Jar file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->resourceURL:Ljava/net/URL;

    .line 514
    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1

    .line 526
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 533
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->resourceURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 534
    .local v0, "packageDir":Ljava/io/File;
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v0}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->getAnnotationNamesFromDirectory(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/util/Set;

    move-result-object v2

    .line 535
    .end local v0    # "packageDir":Ljava/io/File;
    .restart local v2    # "annotationNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_1

    .line 537
    .end local v2    # "annotationNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 540
    .restart local v2    # "annotationNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->supportedBundledAnnotationClasses:Ljava/util/Set;

    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->loadAnnotationClasses(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 541
    return-void
.end method


# virtual methods
.method public final getBundledAnnotationClasses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->supportedBundledAnnotationClasses:Ljava/util/Set;

    return-object v0
.end method

.method protected hasWellDefinedTargetMetaAnnotation(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 810
    .local p1, "annoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v0, Ljava/lang/annotation/Target;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/annotation/Target;

    .line 812
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Target;

    invoke-interface {v0}, Ljava/lang/annotation/Target;->value()[Ljava/lang/annotation/ElementType;

    move-result-object v0

    .line 811
    invoke-static {v0, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->hasTypeQualifierElementTypes([Ljava/lang/annotation/ElementType;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 810
    :goto_0
    return v0
.end method

.method protected isSupportedAnnotationClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 828
    .local p1, "annoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected final loadAnnotationClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 5
    .param p1, "fullyQualifiedClassName"    # Ljava/lang/String;
    .param p2, "issueError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 717
    const/4 v0, 0x0

    .line 719
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->classLoader:Ljava/net/URLClassLoader;

    if-eqz v1, :cond_0

    .line 720
    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 722
    :cond_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 731
    :goto_0
    nop

    .line 735
    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 736
    if-nez p2, :cond_1

    .line 743
    return-object v2

    .line 737
    :cond_1
    new-instance v1, Lorg/checkerframework/javacutil/UserError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 738
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": the loaded class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 740
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a type annotation."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 746
    :cond_2
    const-class v1, Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 749
    .local v1, "annoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->hasWellDefinedTargetMetaAnnotation(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 751
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->isSupportedAnnotationClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v2, v1

    :cond_3
    return-object v2

    .line 752
    :cond_4
    if-nez p2, :cond_5

    .line 767
    return-object v2

    .line 756
    :cond_5
    new-instance v2, Lorg/checkerframework/javacutil/UserError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 757
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": the loaded annotation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 759
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a type annotation. Check its @Target meta-annotation."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 724
    .end local v1    # "annoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :catch_0
    move-exception v1

    .line 725
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Lorg/checkerframework/javacutil/UserError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 726
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": could not load class for annotation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Ensure that it is a type annotation and your classpath is correct."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected final loadAnnotationClasses(Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation

    .line 781
    .local p1, "fullyQualifiedAnnoNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 783
    .local v0, "loadedClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 785
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 786
    .local v2, "fullyQualifiedAnnoName":Ljava/lang/String;
    nop

    .line 787
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->loadAnnotationClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v3

    .line 788
    .local v3, "annoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz v3, :cond_0

    .line 789
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 791
    .end local v2    # "fullyQualifiedAnnoName":Ljava/lang/String;
    .end local v3    # "annoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_0
    goto :goto_0

    .line 794
    :cond_1
    return-object v0
.end method

.method public final loadExternalAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "annoName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 603
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->loadAnnotationClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final loadExternalAnnotationClassesFromDirectory(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p1, "dirName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation

    .line 615
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 616
    .local v0, "rootDirectory":Ljava/io/File;
    nop

    .line 617
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v0}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->getAnnotationNamesFromDirectory(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/util/Set;

    move-result-object v1

    .line 618
    .local v1, "annoNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->loadAnnotationClasses(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method protected final printPaths()V
    .locals 10

    .line 447
    nop

    .line 448
    const-string v0, "sun.boot.class.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "bootclassPaths":[Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v1

    sget-object v2, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    const-string v3, "bootclass path:"

    invoke-interface {v1, v2, v3}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 450
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "\t"

    if-ge v3, v1, :cond_0

    aget-object v5, v0, v3

    .line 451
    .local v5, "path":Ljava/lang/String;
    iget-object v6, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v6}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v6

    sget-object v7, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 450
    .end local v5    # "path":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 455
    :cond_0
    const-string v1, "java.ext.dirs"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, "extensionDirs":[Ljava/lang/String;
    iget-object v3, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v3}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v3

    sget-object v5, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    const-string v6, "extension dirs:"

    invoke-interface {v3, v5, v6}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 457
    array-length v3, v1

    move v5, v2

    :goto_1
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 458
    .local v6, "path":Ljava/lang/String;
    iget-object v7, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v7}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v7

    sget-object v8, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 457
    .end local v6    # "path":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 462
    :cond_1
    const-string v3, "java.class.path"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 463
    .local v3, "javaclassPaths":[Ljava/lang/String;
    iget-object v5, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v5}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v5

    sget-object v6, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    const-string v7, "java classpaths:"

    invoke-interface {v5, v6, v7}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 464
    array-length v5, v3

    :goto_2
    if-ge v2, v5, :cond_2

    aget-object v6, v3, v2

    .line 465
    .restart local v6    # "path":Ljava/lang/String;
    iget-object v7, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v7}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v7

    sget-object v8, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 464
    .end local v6    # "path":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 469
    :cond_2
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v2}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v2

    sget-object v5, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    const-string v6, "classloader examined paths:"

    invoke-interface {v2, v5, v6}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 470
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->classLoader:Ljava/net/URLClassLoader;

    if-eqz v2, :cond_4

    .line 471
    invoke-virtual {v2}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v2

    .line 472
    .local v2, "urls":[Ljava/net/URL;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    array-length v6, v2

    if-ge v5, v6, :cond_3

    .line 473
    iget-object v6, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v6}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v6

    sget-object v7, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v5

    invoke-virtual {v9}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 472
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 475
    .end local v2    # "urls":[Ljava/net/URL;
    .end local v5    # "i":I
    :cond_3
    goto :goto_4

    .line 476
    :cond_4
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotationClassLoader;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v2}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v2

    sget-object v4, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    const-string v5, "classloader unavailable"

    invoke-interface {v2, v4, v5}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 478
    :goto_4
    return-void
.end method
