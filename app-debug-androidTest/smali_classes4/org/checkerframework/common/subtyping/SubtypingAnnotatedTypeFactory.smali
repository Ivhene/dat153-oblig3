.class public Lorg/checkerframework/common/subtyping/SubtypingAnnotatedTypeFactory;
.super Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;
.source "SubtypingAnnotatedTypeFactory.java"


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 0
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 25
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 26
    invoke-virtual {p0}, Lorg/checkerframework/common/subtyping/SubtypingAnnotatedTypeFactory;->postInit()V

    .line 27
    return-void
.end method


# virtual methods
.method protected addCheckedCodeDefaults(Lorg/checkerframework/framework/util/defaults/QualifierDefaults;)V
    .locals 7
    .param p1, "defs"    # Lorg/checkerframework/framework/util/defaults/QualifierDefaults;

    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "foundOtherwise":Z
    invoke-virtual {p0}, Lorg/checkerframework/common/subtyping/SubtypingAnnotatedTypeFactory;->getSupportedTypeQualifiers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 115
    .local v2, "qual":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v3, Lorg/checkerframework/framework/qual/DefaultFor;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/qual/DefaultFor;

    .line 116
    .local v3, "defaultFor":Lorg/checkerframework/framework/qual/DefaultFor;
    if-eqz v3, :cond_2

    .line 117
    invoke-interface {v3}, Lorg/checkerframework/framework/qual/DefaultFor;->value()[Lorg/checkerframework/framework/qual/TypeUseLocation;

    move-result-object v4

    .line 118
    .local v4, "locations":[Lorg/checkerframework/framework/qual/TypeUseLocation;
    iget-object v5, p0, Lorg/checkerframework/common/subtyping/SubtypingAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    invoke-static {v5, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->addCheckedCodeDefaults(Ljavax/lang/model/element/AnnotationMirror;[Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 119
    if-nez v0, :cond_1

    .line 121
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sget-object v6, Lorg/checkerframework/framework/qual/TypeUseLocation;->OTHERWISE:Lorg/checkerframework/framework/qual/TypeUseLocation;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    :goto_2
    move v0, v5

    .line 124
    .end local v4    # "locations":[Lorg/checkerframework/framework/qual/TypeUseLocation;
    :cond_2
    const-class v4, Lorg/checkerframework/framework/qual/DefaultQualifierInHierarchy;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 125
    iget-object v4, p0, Lorg/checkerframework/common/subtyping/SubtypingAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    .line 126
    invoke-static {v4, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    sget-object v5, Lorg/checkerframework/framework/qual/TypeUseLocation;->OTHERWISE:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 125
    invoke-virtual {p1, v4, v5}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->addCheckedCodeDefault(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 127
    const/4 v0, 0x1

    .line 129
    .end local v2    # "qual":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v3    # "defaultFor":Lorg/checkerframework/framework/qual/DefaultFor;
    :cond_3
    goto :goto_0

    .line 131
    :cond_4
    iget-object v1, p0, Lorg/checkerframework/common/subtyping/SubtypingAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v2, Lorg/checkerframework/common/subtyping/qual/Unqualified;

    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 132
    .local v1, "unqualified":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v0, :cond_5

    invoke-virtual {p0, v1}, Lorg/checkerframework/common/subtyping/SubtypingAnnotatedTypeFactory;->isSupportedQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 133
    sget-object v2, Lorg/checkerframework/framework/qual/TypeUseLocation;->OTHERWISE:Lorg/checkerframework/framework/qual/TypeUseLocation;

    invoke-virtual {p1, v1, v2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->addCheckedCodeDefault(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 135
    :cond_5
    return-void
.end method

.method protected createAnnotationClassLoader()Lorg/checkerframework/framework/type/AnnotationClassLoader;
    .locals 2

    .line 31
    new-instance v0, Lorg/checkerframework/common/subtyping/SubtypingAnnotationClassLoader;

    iget-object v1, p0, Lorg/checkerframework/common/subtyping/SubtypingAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-direct {v0, v1}, Lorg/checkerframework/common/subtyping/SubtypingAnnotationClassLoader;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    return-object v0
.end method

.method protected createSupportedTypeQualifiers()Ljava/util/Set;
    .locals 12
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

    .line 38
    invoke-virtual {p0}, Lorg/checkerframework/common/subtyping/SubtypingAnnotatedTypeFactory;->createAnnotationClassLoader()Lorg/checkerframework/framework/type/AnnotationClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/subtyping/SubtypingAnnotatedTypeFactory;->loader:Lorg/checkerframework/framework/type/AnnotationClassLoader;

    .line 40
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 42
    .local v0, "qualSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    iget-object v1, p0, Lorg/checkerframework/common/subtyping/SubtypingAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v2, "quals"

    invoke-virtual {v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "qualNames":Ljava/lang/String;
    iget-object v2, p0, Lorg/checkerframework/common/subtyping/SubtypingAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v3, "qualDirs"

    invoke-virtual {v2, v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "qualDirectories":Ljava/lang/String;
    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    new-instance v3, Lorg/checkerframework/javacutil/UserError;

    const-string v4, "SubtypingChecker: missing required option. Use -Aquals or -AqualDirs."

    invoke-direct {v3, v4}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 51
    :cond_1
    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 52
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 53
    .local v7, "qualName":Ljava/lang/String;
    invoke-static {v7}, Lorg/checkerframework/org/plumelib/reflection/Signatures;->isBinaryName(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 57
    iget-object v8, p0, Lorg/checkerframework/common/subtyping/SubtypingAnnotatedTypeFactory;->loader:Lorg/checkerframework/framework/type/AnnotationClassLoader;

    invoke-virtual {v8, v7}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->loadExternalAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 58
    .local v8, "anno":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz v8, :cond_2

    .line 61
    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    .end local v7    # "qualName":Ljava/lang/String;
    .end local v8    # "anno":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 59
    .restart local v7    # "qualName":Ljava/lang/String;
    .restart local v8    # "anno":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_2
    new-instance v3, Lorg/checkerframework/javacutil/UserError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Qualifier specified in -Aquals not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 54
    .end local v8    # "anno":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_3
    new-instance v3, Lorg/checkerframework/javacutil/UserError;

    const-string v4, "Malformed qualifier \"%s\" in -Aquals=%s"

    filled-new-array {v7, v1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 66
    .end local v7    # "qualName":Ljava/lang/String;
    :cond_4
    if-eqz v2, :cond_6

    .line 67
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v3

    :goto_2
    if-ge v6, v5, :cond_6

    aget-object v7, v4, v6

    .line 68
    .local v7, "dirName":Ljava/lang/String;
    iget-object v8, p0, Lorg/checkerframework/common/subtyping/SubtypingAnnotatedTypeFactory;->loader:Lorg/checkerframework/framework/type/AnnotationClassLoader;

    .line 69
    invoke-virtual {v8, v7}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->loadExternalAnnotationClassesFromDirectory(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    .line 70
    .local v8, "annos":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 74
    invoke-interface {v0, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 67
    .end local v7    # "dirName":Ljava/lang/String;
    .end local v8    # "annos":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 71
    .restart local v7    # "dirName":Ljava/lang/String;
    .restart local v8    # "annos":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    :cond_5
    new-instance v3, Lorg/checkerframework/javacutil/UserError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Directory specified in -AqualsDir contains no qualifiers: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    .end local v7    # "dirName":Ljava/lang/String;
    .end local v8    # "annos":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    :cond_6
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 84
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 85
    .local v5, "qual":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v6, Lorg/checkerframework/framework/qual/SubtypeOf;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    .line 86
    .local v6, "subtypeOfAnnotation":Ljava/lang/annotation/Annotation;
    if-eqz v6, :cond_8

    .line 88
    const-class v7, Lorg/checkerframework/framework/qual/SubtypeOf;

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/qual/SubtypeOf;

    invoke-interface {v7}, Lorg/checkerframework/framework/qual/SubtypeOf;->value()[Ljava/lang/Class;

    move-result-object v7

    array-length v8, v7

    move v9, v3

    :goto_4
    if-ge v9, v8, :cond_8

    aget-object v10, v7, v9

    .line 89
    .local v10, "superqual":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 88
    .end local v10    # "superqual":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 90
    .restart local v10    # "superqual":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_7
    new-instance v3, Lorg/checkerframework/javacutil/UserError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SubtypingChecker: qualifier "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " was specified via -Aquals but its super-qualifier "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " was not"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 99
    .end local v5    # "qual":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v6    # "subtypeOfAnnotation":Ljava/lang/annotation/Annotation;
    .end local v10    # "superqual":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_8
    goto :goto_3

    .line 101
    :cond_9
    return-object v0

    .line 79
    :cond_a
    new-instance v3, Lorg/checkerframework/javacutil/UserError;

    const-string v4, "SubtypingChecker: no qualifiers specified via -Aquals or -AqualDirs"

    invoke-direct {v3, v4}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;)V

    throw v3
.end method
