.class public Lcom/android/multidex/MainDexListBuilder;
.super Ljava/lang/Object;
.source "MainDexListBuilder.java"


# static fields
.field private static final CLASS_EXTENSION:Ljava/lang/String; = ".class"

.field private static final DISABLE_ANNOTATION_RESOLUTION_WORKAROUND:Ljava/lang/String; = "--disable-annotation-resolution-workaround"

.field private static final EOL:Ljava/lang/String;

.field private static final STATUS_ERROR:I = 0x1

.field private static final USAGE_MESSAGE:Ljava/lang/String;


# instance fields
.field private filesToKeep:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/multidex/MainDexListBuilder;->EOL:Ljava/lang/String;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Usage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Short version: Don\'t use this."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Slightly longer version: This tool is used by mainDexClasses script to build"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "the main dex list."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/multidex/MainDexListBuilder;->USAGE_MESSAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "keepAnnotated"    # Z
    .param p2, "rootJar"    # Ljava/lang/String;
    .param p3, "pathString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/multidex/MainDexListBuilder;->filesToKeep:Ljava/util/Set;

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "jarOfRoots":Ljava/util/zip/ZipFile;
    const/4 v1, 0x0

    .line 107
    .local v1, "path":Lcom/android/multidex/Path;
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 111
    nop

    .line 112
    :try_start_1
    new-instance v2, Lcom/android/multidex/Path;

    invoke-direct {v2, p3}, Lcom/android/multidex/Path;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 114
    new-instance v2, Lcom/android/multidex/ClassReferenceListBuilder;

    invoke-direct {v2, v1}, Lcom/android/multidex/ClassReferenceListBuilder;-><init>(Lcom/android/multidex/Path;)V

    .line 115
    .local v2, "mainListBuilder":Lcom/android/multidex/ClassReferenceListBuilder;
    invoke-virtual {v2, v0}, Lcom/android/multidex/ClassReferenceListBuilder;->addRoots(Ljava/util/zip/ZipFile;)V

    .line 116
    invoke-virtual {v2}, Lcom/android/multidex/ClassReferenceListBuilder;->getClassNames()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 117
    .local v4, "className":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/multidex/MainDexListBuilder;->filesToKeep:Ljava/util/Set;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".class"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    nop

    .end local v4    # "className":Ljava/lang/String;
    goto :goto_0

    .line 119
    :cond_0
    if-eqz p1, :cond_1

    .line 120
    invoke-direct {p0, v1}, Lcom/android/multidex/MainDexListBuilder;->keepAnnotated(Lcom/android/multidex/Path;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    .end local v2    # "mainListBuilder":Lcom/android/multidex/ClassReferenceListBuilder;
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 127
    goto :goto_1

    .line 125
    :catch_0
    move-exception v2

    .line 128
    :goto_1
    nop

    .line 129
    iget-object v2, v1, Lcom/android/multidex/Path;->elements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/multidex/ClassPathElement;

    .line 131
    .local v3, "element":Lcom/android/multidex/ClassPathElement;
    :try_start_3
    invoke-interface {v3}, Lcom/android/multidex/ClassPathElement;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 134
    goto :goto_3

    .line 132
    :catch_1
    move-exception v4

    .line 135
    .end local v3    # "element":Lcom/android/multidex/ClassPathElement;
    :goto_3
    goto :goto_2

    :cond_2
    nop

    .line 138
    return-void

    .line 123
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 108
    :catch_2
    move-exception v2

    .line 109
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" can not be read as a zip archive. ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 110
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "jarOfRoots":Ljava/util/zip/ZipFile;
    .end local v1    # "path":Lcom/android/multidex/Path;
    .end local p1    # "keepAnnotated":Z
    .end local p2    # "rootJar":Ljava/lang/String;
    .end local p3    # "pathString":Ljava/lang/String;
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 124
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "jarOfRoots":Ljava/util/zip/ZipFile;
    .restart local v1    # "path":Lcom/android/multidex/Path;
    .restart local p1    # "keepAnnotated":Z
    .restart local p2    # "rootJar":Ljava/lang/String;
    .restart local p3    # "pathString":Ljava/lang/String;
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 127
    goto :goto_5

    .line 125
    :catch_3
    move-exception v3

    .line 128
    :goto_5
    if-eqz v1, :cond_3

    .line 129
    iget-object v3, v1, Lcom/android/multidex/Path;->elements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/multidex/ClassPathElement;

    .line 131
    .local v4, "element":Lcom/android/multidex/ClassPathElement;
    :try_start_6
    invoke-interface {v4}, Lcom/android/multidex/ClassPathElement;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 134
    goto :goto_7

    .line 132
    :catch_4
    move-exception v5

    .line 135
    .end local v4    # "element":Lcom/android/multidex/ClassPathElement;
    :goto_7
    goto :goto_6

    :cond_3
    throw v2
.end method

.method private hasRuntimeVisibleAnnotation(Lcom/android/dx/cf/iface/HasAttribute;)Z
    .locals 2
    .param p1, "element"    # Lcom/android/dx/cf/iface/HasAttribute;

    .line 190
    invoke-interface {p1}, Lcom/android/dx/cf/iface/HasAttribute;->getAttributes()Lcom/android/dx/cf/iface/AttributeList;

    move-result-object v0

    const-string v1, "RuntimeVisibleAnnotations"

    invoke-interface {v0, v1}, Lcom/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    .line 192
    .local v0, "att":Lcom/android/dx/cf/iface/Attribute;
    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/dx/cf/attrib/AttRuntimeVisibleAnnotations;

    invoke-virtual {v1}, Lcom/android/dx/cf/attrib/AttRuntimeVisibleAnnotations;->getAnnotations()Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/annotation/Annotations;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private keepAnnotated(Lcom/android/multidex/Path;)V
    .locals 9
    .param p1, "path"    # Lcom/android/multidex/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 161
    invoke-virtual {p1}, Lcom/android/multidex/Path;->getElements()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/multidex/ClassPathElement;

    .line 163
    .local v1, "element":Lcom/android/multidex/ClassPathElement;
    invoke-interface {v1}, Lcom/android/multidex/ClassPathElement;->list()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 164
    .local v3, "name":Ljava/lang/String;
    const-string v4, ".class"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 165
    invoke-virtual {p1, v3}, Lcom/android/multidex/Path;->getClass(Ljava/lang/String;)Lcom/android/dx/cf/direct/DirectClassFile;

    move-result-object v4

    .line 166
    .local v4, "clazz":Lcom/android/dx/cf/direct/DirectClassFile;
    invoke-direct {p0, v4}, Lcom/android/multidex/MainDexListBuilder;->hasRuntimeVisibleAnnotation(Lcom/android/dx/cf/iface/HasAttribute;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 167
    iget-object v5, p0, Lcom/android/multidex/MainDexListBuilder;->filesToKeep:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 169
    :cond_0
    invoke-virtual {v4}, Lcom/android/dx/cf/direct/DirectClassFile;->getMethods()Lcom/android/dx/cf/iface/MethodList;

    move-result-object v5

    .line 170
    .local v5, "methods":Lcom/android/dx/cf/iface/MethodList;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-interface {v5}, Lcom/android/dx/cf/iface/MethodList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 171
    invoke-interface {v5, v6}, Lcom/android/dx/cf/iface/MethodList;->get(I)Lcom/android/dx/cf/iface/Method;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/multidex/MainDexListBuilder;->hasRuntimeVisibleAnnotation(Lcom/android/dx/cf/iface/HasAttribute;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 172
    iget-object v7, p0, Lcom/android/multidex/MainDexListBuilder;->filesToKeep:Ljava/util/Set;

    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    goto :goto_1

    .line 170
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 176
    .end local v6    # "i":I
    :cond_2
    invoke-virtual {v4}, Lcom/android/dx/cf/direct/DirectClassFile;->getFields()Lcom/android/dx/cf/iface/FieldList;

    move-result-object v6

    .line 177
    .local v6, "fields":Lcom/android/dx/cf/iface/FieldList;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    invoke-interface {v6}, Lcom/android/dx/cf/iface/FieldList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 178
    invoke-interface {v6, v7}, Lcom/android/dx/cf/iface/FieldList;->get(I)Lcom/android/dx/cf/iface/Field;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/multidex/MainDexListBuilder;->hasRuntimeVisibleAnnotation(Lcom/android/dx/cf/iface/HasAttribute;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 179
    iget-object v8, p0, Lcom/android/multidex/MainDexListBuilder;->filesToKeep:Ljava/util/Set;

    invoke-interface {v8, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    goto :goto_1

    .line 177
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 185
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "clazz":Lcom/android/dx/cf/direct/DirectClassFile;
    .end local v5    # "methods":Lcom/android/dx/cf/iface/MethodList;
    .end local v6    # "fields":Lcom/android/dx/cf/iface/FieldList;
    .end local v7    # "i":I
    :cond_4
    :goto_4
    goto :goto_1

    .line 186
    .end local v1    # "element":Lcom/android/multidex/ClassPathElement;
    :cond_5
    goto :goto_0

    .line 187
    :cond_6
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "argIndex":I
    const/4 v1, 0x1

    .line 74
    .local v1, "keepAnnotated":Z
    :goto_0
    array-length v2, p0

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    const/4 v4, 0x1

    if-ge v0, v2, :cond_1

    .line 75
    aget-object v2, p0, v0

    const-string v3, "--disable-annotation-resolution-workaround"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    const/4 v1, 0x0

    goto :goto_1

    .line 78
    :cond_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid option "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, p0, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/android/multidex/MainDexListBuilder;->printUsage()V

    .line 80
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 82
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    array-length v2, p0

    sub-int/2addr v2, v0

    if-eq v2, v3, :cond_2

    .line 85
    invoke-static {}, Lcom/android/multidex/MainDexListBuilder;->printUsage()V

    .line 86
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 90
    :cond_2
    :try_start_0
    new-instance v2, Lcom/android/multidex/MainDexListBuilder;

    aget-object v3, p0, v0

    add-int/lit8 v5, v0, 0x1

    aget-object v5, p0, v5

    invoke-direct {v2, v1, v3, v5}, Lcom/android/multidex/MainDexListBuilder;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .line 92
    .local v2, "builder":Lcom/android/multidex/MainDexListBuilder;
    invoke-virtual {v2}, Lcom/android/multidex/MainDexListBuilder;->getMainDexList()Ljava/util/Set;

    move-result-object v3

    .line 93
    .local v3, "toKeep":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v3}, Lcom/android/multidex/MainDexListBuilder;->printList(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v2    # "builder":Lcom/android/multidex/MainDexListBuilder;
    .end local v3    # "toKeep":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 99
    return-void

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A fatal error occured: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 97
    return-void
.end method

.method private static printList(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 152
    .local p0, "fileNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 153
    .local v1, "fileName":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    .end local v1    # "fileName":Ljava/lang/String;
    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method

.method private static printUsage()V
    .locals 2

    .line 148
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sget-object v1, Lcom/android/multidex/MainDexListBuilder;->USAGE_MESSAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 149
    return-void
.end method


# virtual methods
.method public getMainDexList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/android/multidex/MainDexListBuilder;->filesToKeep:Ljava/util/Set;

    return-object v0
.end method
