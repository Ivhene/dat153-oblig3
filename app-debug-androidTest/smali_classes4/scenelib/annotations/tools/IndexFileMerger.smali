.class public Lscenelib/annotations/tools/IndexFileMerger;
.super Ljava/lang/Object;
.source "IndexFileMerger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 20
    .param p0, "args"    # [Ljava/lang/String;

    .line 41
    const-string v1, "\""

    move-object/from16 v2, p0

    array-length v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v4, :cond_0

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 43
    :cond_0
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/HashMultimap;->create()Lorg/checkerframework/com/google/common/collect/HashMultimap;

    move-result-object v5

    .line 50
    .local v5, "annotatedFor":Lorg/checkerframework/com/google/common/collect/SetMultimap;, "Lorg/checkerframework/com/google/common/collect/SetMultimap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/sun/tools/javac/main/CommandLine;->parse([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v6, v0

    .line 58
    .local v6, "inputArgs":[Ljava/lang/String;
    nop

    .line 60
    :try_start_1
    new-instance v0, Ljava/io/File;

    aget-object v7, v6, v3

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 61
    .local v7, "baseFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v0

    move v8, v0

    .line 62
    .local v8, "byDir":Z
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 63
    .local v9, "basePath":Ljava/lang/String;
    new-instance v0, Lscenelib/annotations/el/AScene;

    invoke-direct {v0}, Lscenelib/annotations/el/AScene;-><init>()V

    move-object v10, v0

    .line 65
    .local v10, "scene":Lscenelib/annotations/el/AScene;
    if-eqz v8, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    move v11, v0

    .local v11, "i":I
    :goto_1
    array-length v0, v6

    if-ge v11, v0, :cond_6

    .line 66
    new-instance v0, Ljava/io/File;

    aget-object v12, v6, v11

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 67
    .local v12, "inputFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 68
    .local v13, "inputPath":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 70
    .local v14, "filename":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 71
    const-string v0, ".jaif"

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "jann"

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARNING: ignoring non-JAIF "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    goto/16 :goto_4

    .line 75
    :cond_2
    invoke-virtual {v13, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 76
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "WARNING: ignoring file outside base directory "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    goto/16 :goto_4

    .line 82
    :cond_3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "relPath":Ljava/lang/String;
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 84
    .local v3, "ix":I
    if-gez v3, :cond_4

    move-object/from16 v16, v0

    const/4 v15, 0x0

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    invoke-virtual {v0, v15, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    :goto_2
    move-object/from16 v17, v16

    .line 86
    .local v17, "subdir":Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v0, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 87
    const/16 v15, 0x2f

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v18, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v19, v0

    .end local v0    # "relPath":Ljava/lang/String;
    .local v19, "relPath":Ljava/lang/String;
    const-string v0, "."

    invoke-virtual {v4, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "classname":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v15, v17

    .end local v17    # "subdir":Ljava/lang/String;
    .local v15, "subdir":Ljava/lang/String;
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v0, v4}, Lorg/checkerframework/com/google/common/collect/SetMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 92
    .end local v0    # "classname":Ljava/lang/String;
    .end local v3    # "ix":I
    .end local v15    # "subdir":Ljava/lang/String;
    .end local v19    # "relPath":Ljava/lang/String;
    :cond_5
    :try_start_2
    invoke-static {v13, v10}, Lscenelib/annotations/io/IndexFileParser;->parseFile(Ljava/lang/String;Lscenelib/annotations/el/AScene;)Ljava/util/Map;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/checkerframework/org/plumelib/util/FileIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 100
    :goto_3
    goto :goto_4

    .line 97
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 98
    .local v0, "e":Lorg/checkerframework/org/plumelib/util/FileIOException;
    :try_start_3
    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/FileIOException;->printStackTrace()V

    .line 99
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_4

    .line 93
    .end local v0    # "e":Lorg/checkerframework/org/plumelib/util/FileIOException;
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 94
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IndexFileMerger: can\'t read "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_3

    .line 65
    .end local v12    # "inputFile":Ljava/io/File;
    .end local v13    # "inputPath":Ljava/lang/String;
    .end local v14    # "filename":Ljava/lang/String;
    :goto_4
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_1

    .line 103
    .end local v11    # "i":I
    :cond_6
    if-nez v8, :cond_7

    .line 125
    iget-object v0, v10, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 128
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AClass;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/AClass;

    new-instance v4, Lscenelib/annotations/tools/IndexFileMerger$1;

    invoke-direct {v4}, Lscenelib/annotations/tools/IndexFileMerger$1;-><init>()V

    const/4 v11, 0x0

    invoke-virtual {v3, v4, v11}, Lscenelib/annotations/el/AClass;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    nop

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AClass;>;"
    goto :goto_5

    .line 246
    :cond_7
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    .line 247
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 248
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 247
    invoke-static {v0, v1}, Lscenelib/annotations/field/AnnotationFieldType;->fromClass(Ljava/lang/Class;Ljava/util/Map;)Lscenelib/annotations/field/AnnotationFieldType;

    move-result-object v0

    move-object v1, v0

    .line 249
    .local v1, "stringArray":Lscenelib/annotations/field/AnnotationFieldType;
    const-string v0, "AnnotatedFor"

    .line 251
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, "IndexFileMerger"

    .line 250
    invoke-static {v0, v3, v1, v4}, Lscenelib/annotations/Annotations;->createValueAnnotationDef(Ljava/lang/String;Ljava/util/Set;Lscenelib/annotations/field/AnnotationFieldType;Ljava/lang/String;)Lscenelib/annotations/el/AnnotationDef;

    move-result-object v0

    move-object v3, v0

    .line 253
    .local v3, "afDef":Lscenelib/annotations/el/AnnotationDef;
    invoke-interface {v5}, Lorg/checkerframework/com/google/common/collect/SetMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 254
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 255
    .local v11, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    .line 256
    .local v12, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v13, Lscenelib/annotations/Annotation;

    const-string v14, "value"

    .line 257
    invoke-static {v14, v12}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v14

    invoke-direct {v13, v3, v14}, Lscenelib/annotations/Annotation;-><init>(Lscenelib/annotations/el/AnnotationDef;Ljava/util/Map;)V

    .line 258
    .local v13, "afAnno":Lscenelib/annotations/Annotation;
    iget-object v14, v10, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v14, v11}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lscenelib/annotations/el/AClass;

    iget-object v14, v14, Lscenelib/annotations/el/AClass;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    nop

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v13    # "afAnno":Lscenelib/annotations/Annotation;
    goto :goto_6

    .line 260
    :cond_8
    invoke-virtual {v10}, Lscenelib/annotations/el/AScene;->prune()V

    .line 261
    invoke-interface {v5}, Lorg/checkerframework/com/google/common/collect/SetMultimap;->clear()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 264
    :try_start_4
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v11, 0x1

    invoke-direct {v0, v4, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-static {v10, v0}, Lscenelib/annotations/io/IndexFileWriter;->write(Lscenelib/annotations/el/AScene;Ljava/io/Writer;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lscenelib/annotations/el/DefException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_7

    .line 268
    :catch_2
    move-exception v0

    .line 269
    .local v0, "e":Lscenelib/annotations/el/DefException;
    :try_start_5
    invoke-virtual {v0}, Lscenelib/annotations/el/DefException;->printStackTrace()V

    .line 270
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_8

    .line 265
    .end local v0    # "e":Lscenelib/annotations/el/DefException;
    :catch_3
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 267
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 271
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_7
    nop

    .line 274
    .end local v1    # "stringArray":Lscenelib/annotations/field/AnnotationFieldType;
    .end local v3    # "afDef":Lscenelib/annotations/el/AnnotationDef;
    .end local v7    # "baseFile":Ljava/io/File;
    .end local v8    # "byDir":Z
    .end local v9    # "basePath":Ljava/lang/String;
    .end local v10    # "scene":Lscenelib/annotations/el/AScene;
    :goto_8
    goto :goto_9

    .line 51
    .end local v6    # "inputArgs":[Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 52
    .local v0, "ex":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 53
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "(For non-argfile beginning with \"@\", use \"@@\" for initial \"@\"."

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Alternative for filenames: indicate directory, e.g. as \'./@file\'."

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 55
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Alternative for flags: use \'=\', as in \'-o=@Deprecated\'.)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 57
    return-void

    .line 272
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 273
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 275
    .end local v0    # "e":Ljava/io/IOException;
    :goto_9
    return-void
.end method
