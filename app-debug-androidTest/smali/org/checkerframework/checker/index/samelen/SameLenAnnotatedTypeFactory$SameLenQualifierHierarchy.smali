.class final Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenQualifierHierarchy;
.super Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;
.source "SameLenAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SameLenQualifierHierarchy"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V
    .locals 0
    .param p2, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 168
    iput-object p1, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    .line 169
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;-><init>(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V

    .line 170
    return-void
.end method

.method private unionIfNotDisjoint(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 182
    .local p1, "c1":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "c2":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 183
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 184
    .local v2, "s":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 185
    const/4 v1, 0x0

    return-object v1

    .line 187
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 188
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "start"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 174
    iget-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method

.method public greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 195
    const-string v0, "value"

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->hasElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->hasElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValueOfAnnotationWithStringArgument(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 198
    .local v0, "a1Val":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValueOfAnnotationWithStringArgument(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 200
    .local v1, "a2Val":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenQualifierHierarchy;->unionIfNotDisjoint(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v2

    .line 201
    .local v2, "exprs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 202
    iget-object v3, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    invoke-static {v3}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->access$000(Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    return-object v3

    .line 204
    :cond_0
    iget-object v3, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    invoke-virtual {v3, v2}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->createSameLen(Ljava/util/Collection;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    return-object v3

    .line 208
    .end local v0    # "a1Val":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "a2Val":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "exprs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/checker/index/qual/SameLenUnknown;

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    return-object p2

    .line 210
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/checker/index/qual/SameLenUnknown;

    invoke-virtual {v0, p2, v1}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    return-object p1

    .line 213
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    invoke-static {v0}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->access$000(Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method public isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 4
    .param p1, "subAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "superAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 251
    iget-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/checker/index/qual/SameLenBottom;

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 252
    return v1

    .line 253
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/checker/index/qual/SameLenUnknown;

    invoke-virtual {v0, p2, v2}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    return v1

    .line 255
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/checker/index/qual/PolySameLen;

    invoke-virtual {v0, p1, v2}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/checker/index/qual/PolySameLen;

    invoke-virtual {v0, p2, v1}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 257
    :cond_2
    const-string v0, "value"

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->hasElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 258
    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->hasElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 259
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValueOfAnnotationWithStringArgument(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 260
    .local v0, "subArrays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValueOfAnnotationWithStringArgument(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v2

    .line 262
    .local v2, "superArrays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 263
    return v1

    .line 266
    .end local v0    # "subArrays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "superArrays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 222
    const-string v0, "value"

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->hasElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->hasElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValueOfAnnotationWithStringArgument(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 225
    .local v0, "a1Val":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValueOfAnnotationWithStringArgument(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 227
    .local v1, "a2Val":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    invoke-interface {v0, v1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 229
    iget-object v2, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    invoke-virtual {v2, v0}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->createSameLen(Ljava/util/Collection;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    return-object v2

    .line 231
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v2

    .line 236
    .end local v0    # "a1Val":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "a2Val":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/checker/index/qual/SameLenBottom;

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    return-object p2

    .line 238
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/checker/index/qual/SameLenBottom;

    invoke-virtual {v0, p2, v1}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    return-object p1

    .line 240
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/checker/index/qual/PolySameLen;

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/checker/index/qual/PolySameLen;

    .line 241
    invoke-virtual {v0, p2, v1}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 242
    return-object p1

    .line 244
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method
