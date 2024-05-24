.class final Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;
.super Lorg/checkerframework/framework/util/GraphQualifierHierarchy;
.source "KeyForAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyForQualifierHierarchy"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V
    .locals 0
    .param p2, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 193
    iput-object p1, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    .line 194
    iget-object p1, p1, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->KEYFORBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-direct {p0, p2, p1}, Lorg/checkerframework/framework/util/GraphQualifierHierarchy;-><init>(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 195
    return-void
.end method

.method private extractValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;
    .locals 4
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 198
    nop

    .line 199
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v0

    .line 202
    .local v0, "valMap":Ljava/util/Map;, "Ljava/util/Map<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 205
    .end local v1    # "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-class v1, Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, "value"

    invoke-static {p1, v3, v1, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v1

    .line 207
    .restart local v1    # "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v1
.end method


# virtual methods
.method public greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 262
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->UNKNOWNKEYFOR:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    return-object p2

    .line 264
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->UNKNOWNKEYFOR:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    return-object p1

    .line 266
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->KEYFORBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    return-object p1

    .line 268
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->KEYFORBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 269
    return-object p2

    .line 270
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->KEYFOR:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->KEYFOR:Ljavax/lang/model/element/AnnotationMirror;

    .line 271
    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 272
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->extractValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 273
    .local v0, "a1Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->extractValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 274
    .local v1, "a2Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 275
    .local v2, "set":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 276
    iget-object v3, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    invoke-virtual {v3, v2}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->createKeyForAnnotationMirrorWithValue(Ljava/util/LinkedHashSet;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    return-object v3

    .line 280
    .end local v0    # "a1Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "a2Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "set":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->KEYFOR:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 281
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iget-object p1, v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->KEYFOR:Ljavax/lang/model/element/AnnotationMirror;

    .line 283
    :cond_5
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->KEYFOR:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 284
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iget-object p2, v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->KEYFOR:Ljavax/lang/model/element/AnnotationMirror;

    .line 287
    :cond_6
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/util/GraphQualifierHierarchy;->greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method public isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 3
    .param p1, "subAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "superAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 212
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->KEYFOR_NAME:Ljava/lang/String;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->KEYFOR_NAME:Ljava/lang/String;

    .line 213
    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0, p2}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->extractValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 215
    .local v0, "lhsValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->extractValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 217
    .local v1, "rhsValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    return v2

    .line 220
    .end local v0    # "lhsValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "rhsValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->KEYFOR_NAME:Ljava/lang/String;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iget-object p2, v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->KEYFOR:Ljavax/lang/model/element/AnnotationMirror;

    .line 223
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->KEYFOR_NAME:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iget-object p1, v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->KEYFOR:Ljavax/lang/model/element/AnnotationMirror;

    .line 227
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/util/GraphQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method public leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 232
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->UNKNOWNKEYFOR:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    return-object p1

    .line 234
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->UNKNOWNKEYFOR:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    return-object p2

    .line 236
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->KEYFORBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    return-object p2

    .line 238
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->KEYFORBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    return-object p1

    .line 240
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->KEYFOR:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->KEYFOR:Ljavax/lang/model/element/AnnotationMirror;

    .line 241
    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 242
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->extractValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 243
    .local v0, "a1Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->extractValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 244
    .local v1, "a2Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 245
    .local v2, "set":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->retainAll(Ljava/util/Collection;)Z

    .line 246
    iget-object v3, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    invoke-virtual {v3, v2}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->createKeyForAnnotationMirrorWithValue(Ljava/util/LinkedHashSet;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    return-object v3

    .line 250
    .end local v0    # "a1Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "a2Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "set":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->KEYFOR:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 251
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iget-object p1, v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->KEYFOR:Ljavax/lang/model/element/AnnotationMirror;

    .line 253
    :cond_5
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->KEYFOR:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 254
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForQualifierHierarchy;->this$0:Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    iget-object p2, v0, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->KEYFOR:Ljavax/lang/model/element/AnnotationMirror;

    .line 257
    :cond_6
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/util/GraphQualifierHierarchy;->leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method
