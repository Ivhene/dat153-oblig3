.class public Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
.super Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
.source "FlowExpressions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/analysis/FlowExpressions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayAccess"
.end annotation


# instance fields
.field protected final index:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

.field protected final receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;


# direct methods
.method public constructor <init>(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)V
    .locals 0
    .param p1, "type"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "receiver"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .param p3, "index"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 1065
    invoke-direct {p0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 1066
    iput-object p2, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 1067
    iput-object p3, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->index:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 1068
    return-void
.end method


# virtual methods
.method public containsModifiableAliasOf(Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
    .locals 1
    .param p2, "other"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/Store<",
            "*>;",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            ")Z"
        }
    .end annotation

    .line 1120
    .local p1, "store":Lorg/checkerframework/dataflow/analysis/Store;, "Lorg/checkerframework/dataflow/analysis/Store<*>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsModifiableAliasOf(Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1121
    const/4 v0, 0x1

    return v0

    .line 1123
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->index:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsModifiableAliasOf(Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v0

    return v0
.end method

.method public containsOfClass(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            ">;)Z"
        }
    .end annotation

    .line 1072
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 1073
    return v1

    .line 1075
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsOfClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1076
    return v1

    .line 1078
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->index:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsOfClass(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public containsSyntacticEqualReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
    .locals 1
    .param p1, "other"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 1101
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->syntacticEquals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 1102
    invoke-virtual {v0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->syntacticEquals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->index:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 1103
    invoke-virtual {v0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->syntacticEquals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1101
    :goto_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1128
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1129
    return v1

    .line 1131
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    .line 1132
    .local v0, "other":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    iget-object v3, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->index:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    iget-object v3, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->index:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getIndex()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 1

    .line 1086
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->index:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    return-object v0
.end method

.method public getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 1

    .line 1082
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1137
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->index:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isUnassignableByOtherCode()Z
    .locals 1

    .line 1091
    const/4 v0, 0x0

    return v0
.end method

.method public isUnmodifiableByOtherCode()Z
    .locals 1

    .line 1096
    const/4 v0, 0x0

    return v0
.end method

.method public syntacticEquals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
    .locals 4
    .param p1, "other"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 1108
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1109
    return v1

    .line 1111
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    .line 1112
    .local v0, "otherArrayAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    iget-object v3, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v2, v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->syntacticEquals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1113
    return v1

    .line 1115
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->index:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    iget-object v2, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->index:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v1, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->syntacticEquals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1143
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->index:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
