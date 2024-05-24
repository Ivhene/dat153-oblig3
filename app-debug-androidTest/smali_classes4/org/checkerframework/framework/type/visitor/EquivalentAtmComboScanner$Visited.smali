.class public Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;
.super Ljava/lang/Object;
.source "EquivalentAtmComboScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Visited"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;

.field private final visits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/util/Map<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "TRETURN_TYPE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;

    .line 205
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;, "Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner<TRETURN_TYPE;TPARAM;>.Visited;"
    iput-object p1, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->this$0:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->visits:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public add(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)V
    .locals 2
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "TRETURN_TYPE;)V"
        }
    .end annotation

    .line 233
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;, "Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner<TRETURN_TYPE;TPARAM;>.Visited;"
    .local p3, "ret":Ljava/lang/Object;, "TRETURN_TYPE;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->visits:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 234
    .local v0, "recordFor1":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;TRETURN_TYPE;>;"
    if-nez v0, :cond_0

    .line 235
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    move-object v0, v1

    .line 236
    iget-object v1, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->visits:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_0
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    return-void
.end method

.method public clear()V
    .locals 1

    .line 211
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;, "Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner<TRETURN_TYPE;TPARAM;>.Visited;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->visits:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 212
    return-void
.end method

.method public contains(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 2
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 215
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;, "Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner<TRETURN_TYPE;TPARAM;>.Visited;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->visits:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 216
    .local v0, "recordFor1":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;TRETURN_TYPE;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getResult(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;
    .locals 2
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ")TRETURN_TYPE;"
        }
    .end annotation

    .line 221
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;, "Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner<TRETURN_TYPE;TPARAM;>.Visited;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->visits:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 222
    .local v0, "recordFor1":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;TRETURN_TYPE;>;"
    if-nez v0, :cond_0

    .line 223
    const/4 v1, 0x0

    return-object v1

    .line 226
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
