.class public Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;
.super Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
.source "FlowExpressions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/analysis/FlowExpressions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayCreation"
.end annotation


# instance fields
.field protected final dimensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field protected final initializers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/lang/model/type/TypeMirror;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "type"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/List<",
            "+",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            ">;",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            ">;)V"
        }
    .end annotation

    .line 1173
    .local p2, "dimensions":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    .local p3, "initializers":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 1174
    iput-object p2, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;->dimensions:Ljava/util/List;

    .line 1175
    iput-object p3, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;->initializers:Ljava/util/List;

    .line 1176
    return-void
.end method


# virtual methods
.method public containsOfClass(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            ">;)Z"
        }
    .end annotation

    .line 1189
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;->dimensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 1190
    .local v1, "n":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 1191
    return v2

    .line 1193
    .end local v1    # "n":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_0
    goto :goto_0

    .line 1194
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;->initializers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 1195
    .restart local v1    # "n":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 1196
    return v2

    .line 1198
    .end local v1    # "n":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_2
    goto :goto_1

    .line 1199
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public containsSyntacticEqualReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
    .locals 1
    .param p1, "other"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 1237
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;->syntacticEquals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1219
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1220
    return v1

    .line 1222
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;

    .line 1223
    .local v0, "other":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;
    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;->dimensions:Ljava/util/List;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;->getDimensions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;->initializers:Ljava/util/List;

    .line 1224
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;->getInitializers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1227
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1223
    :goto_0
    return v1
.end method

.method public getDimensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            ">;"
        }
    .end annotation

    .line 1180
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;->dimensions:Ljava/util/List;

    return-object v0
.end method

.method public getInitializers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            ">;"
        }
    .end annotation

    .line 1184
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;->initializers:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1214
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;->dimensions:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;->initializers:Ljava/util/List;

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isUnassignableByOtherCode()Z
    .locals 1

    .line 1204
    const/4 v0, 0x0

    return v0
.end method

.method public isUnmodifiableByOtherCode()Z
    .locals 1

    .line 1209
    const/4 v0, 0x0

    return v0
.end method

.method public syntacticEquals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
    .locals 1
    .param p1, "other"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 1232
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1243
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;->type:Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;->dimensions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1245
    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;->dimensions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 1246
    .local v2, "dim":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    if-nez v2, :cond_0

    const-string v3, ""

    goto :goto_1

    :cond_0
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1248
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    .end local v2    # "dim":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_0

    .line 1251
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;->initializers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1252
    const/4 v1, 0x0

    .line 1253
    .local v1, "needComma":Z
    const-string v2, " {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;->initializers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 1255
    .local v3, "init":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    if-eqz v1, :cond_2

    .line 1256
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1259
    const/4 v1, 0x1

    .line 1260
    .end local v3    # "init":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_2

    .line 1261
    :cond_3
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    .end local v1    # "needComma":Z
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
