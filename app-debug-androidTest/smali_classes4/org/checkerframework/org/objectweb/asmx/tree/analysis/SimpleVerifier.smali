.class public Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;
.super Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;
.source "SimpleVerifier.java"


# instance fields
.field private final currentClass:Lorg/checkerframework/org/objectweb/asmx/Type;

.field private final currentClassInterfaces:Ljava/util/List;

.field private final currentSuperClass:Lorg/checkerframework/org/objectweb/asmx/Type;

.field private final isInterface:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 70
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;-><init>(Lorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/Type;Z)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/Type;Ljava/util/List;Z)V
    .locals 0
    .param p1, "currentClass"    # Lorg/checkerframework/org/objectweb/asmx/Type;
    .param p2, "currentSuperClass"    # Lorg/checkerframework/org/objectweb/asmx/Type;
    .param p3, "currentClassInterfaces"    # Ljava/util/List;
    .param p4, "isInterface"    # Z

    .line 104
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;-><init>()V

    .line 105
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->currentClass:Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 106
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->currentSuperClass:Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 107
    iput-object p3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->currentClassInterfaces:Ljava/util/List;

    .line 108
    iput-boolean p4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->isInterface:Z

    .line 109
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/Type;Z)V
    .locals 1
    .param p1, "currentClass"    # Lorg/checkerframework/org/objectweb/asmx/Type;
    .param p2, "currentSuperClass"    # Lorg/checkerframework/org/objectweb/asmx/Type;
    .param p3, "isInterface"    # Z

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;-><init>(Lorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/Type;Ljava/util/List;Z)V

    .line 87
    return-void
.end method

.method private getSuperClass(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/Type;
    .locals 2
    .param p1, "t"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 225
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->currentClass:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->currentSuperClass:Lorg/checkerframework/org/objectweb/asmx/Type;

    return-object v0

    .line 228
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->getClass(Lorg/checkerframework/org/objectweb/asmx/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 229
    .local v0, "c":Ljava/lang/Class;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/Class;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private isAssignableFrom(Lorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/Type;)Z
    .locals 4
    .param p1, "t"    # Lorg/checkerframework/org/objectweb/asmx/Type;
    .param p2, "u"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 233
    invoke-virtual {p1, p2}, Lorg/checkerframework/org/objectweb/asmx/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 234
    return v1

    .line 236
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->currentClass:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    invoke-direct {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->getSuperClass(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->isAssignableFrom(Lorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/Type;)Z

    move-result v0

    return v0

    .line 239
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->currentClass:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-eqz v0, :cond_5

    invoke-virtual {p2, v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 240
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->currentSuperClass:Lorg/checkerframework/org/objectweb/asmx/Type;

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->isAssignableFrom(Lorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    return v1

    .line 243
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->currentClassInterfaces:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 244
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->currentClassInterfaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 245
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->currentClassInterfaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 246
    .local v2, "v":Lorg/checkerframework/org/objectweb/asmx/Type;
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->isAssignableFrom(Lorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/Type;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 247
    return v1

    .line 244
    .end local v2    # "v":Lorg/checkerframework/org/objectweb/asmx/Type;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    return v0

    .line 253
    :cond_5
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->getClass(Lorg/checkerframework/org/objectweb/asmx/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->getClass(Lorg/checkerframework/org/objectweb/asmx/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private isInterface(Lorg/checkerframework/org/objectweb/asmx/Type;)Z
    .locals 1
    .param p1, "t"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 218
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->currentClass:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->isInterface:Z

    return v0

    .line 221
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->getClass(Lorg/checkerframework/org/objectweb/asmx/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getClass(Lorg/checkerframework/org/objectweb/asmx/Type;)Ljava/lang/Class;
    .locals 3
    .param p1, "t"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 258
    :try_start_0
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 259
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 261
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getElementValue(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 3
    .param p1, "objectArrayValue"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;
        }
    .end annotation

    .line 131
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->getType()Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    .line 132
    .local v0, "arrayType":Lorg/checkerframework/org/objectweb/asmx/Type;
    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 134
    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 135
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    return-object v1

    .line 136
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Lnull;"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    return-object p1

    .line 140
    :cond_1
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    const-string v2, "Not an array type"

    invoke-direct {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected isArrayValue(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Z
    .locals 4
    .param p1, "value"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 120
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->getType()Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    .line 121
    .local v0, "t":Lorg/checkerframework/org/objectweb/asmx/Type;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Lnull;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 122
    :cond_1
    return v1

    .line 125
    :cond_2
    return v1
.end method

.method protected isSubTypeOf(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Z
    .locals 8
    .param p1, "value"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .param p2, "expected"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 144
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->getType()Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    .line 145
    .local v0, "expectedType":Lorg/checkerframework/org/objectweb/asmx/Type;
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;

    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->getType()Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v1

    .line 146
    .local v1, "type":Lorg/checkerframework/org/objectweb/asmx/Type;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 147
    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 149
    :cond_1
    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 171
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Internal error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    :pswitch_0
    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Lnull;"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v6, 0x9

    const/16 v7, 0xa

    if-eqz v4, :cond_4

    .line 158
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v4

    if-eq v4, v7, :cond_3

    .line 159
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v4

    if-ne v4, v6, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    :goto_1
    nop

    .line 158
    :goto_2
    return v2

    .line 161
    :cond_4
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 162
    return v2

    .line 163
    :cond_5
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v2

    if-eq v2, v7, :cond_7

    .line 164
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v2

    if-ne v2, v6, :cond_6

    goto :goto_3

    .line 168
    :cond_6
    return v3

    .line 166
    :cond_7
    :goto_3
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->isAssignableFrom(Lorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/Type;)Z

    move-result v2

    return v2

    .line 154
    :pswitch_1
    if-ne v1, v0, :cond_8

    goto :goto_4

    :cond_8
    move v2, v3

    :goto_4
    return v2

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public merge(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 5
    .param p1, "v"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .param p2, "w"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 176
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 177
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->getType()Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    .line 178
    .local v0, "t":Lorg/checkerframework/org/objectweb/asmx/Type;
    move-object v1, p2

    check-cast v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;

    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->getType()Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v1

    .line 179
    .local v1, "u":Lorg/checkerframework/org/objectweb/asmx/Type;
    if-eqz v0, :cond_8

    .line 180
    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v2

    const/16 v3, 0x9

    const/16 v4, 0xa

    if-eq v2, v4, :cond_0

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v2

    if-ne v2, v3, :cond_8

    .line 182
    :cond_0
    if-eqz v1, :cond_8

    .line 183
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v2

    if-eq v2, v4, :cond_1

    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v2

    if-ne v2, v3, :cond_8

    .line 185
    :cond_1
    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Lnull;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    return-object p2

    .line 188
    :cond_2
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 189
    return-object p1

    .line 191
    :cond_3
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->isAssignableFrom(Lorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/Type;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 192
    return-object p1

    .line 194
    :cond_4
    invoke-direct {p0, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->isAssignableFrom(Lorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/Type;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 195
    return-object p2

    .line 202
    :cond_5
    if-eqz v0, :cond_7

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->isInterface(Lorg/checkerframework/org/objectweb/asmx/Type;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    .line 205
    :cond_6
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->getSuperClass(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    .line 206
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->isAssignableFrom(Lorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/Type;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 207
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SimpleVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    return-object v2

    .line 203
    :cond_7
    :goto_0
    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->REFERENCE_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v2

    .line 212
    :cond_8
    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->UNINITIALIZED_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v2

    .line 214
    .end local v0    # "t":Lorg/checkerframework/org/objectweb/asmx/Type;
    .end local v1    # "u":Lorg/checkerframework/org/objectweb/asmx/Type;
    :cond_9
    return-object p1
.end method

.method public newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 112
    invoke-super {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .line 113
    .local v0, "v":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->REFERENCE_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    if-ne v0, v1, :cond_0

    .line 114
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;

    invoke-direct {v1, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;-><init>(Lorg/checkerframework/org/objectweb/asmx/Type;)V

    move-object v0, v1

    .line 116
    :cond_0
    return-object v0
.end method
