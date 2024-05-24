.class public Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;
.super Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;
.source "BasicVerifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;-><init>()V

    return-void
.end method


# virtual methods
.method public binaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 4
    .param p1, "insn"    # Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .param p2, "value1"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .param p3, "value2"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;
        }
    .end annotation

    .line 193
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 299
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :sswitch_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;

    .line 295
    .local v0, "fin":Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;->owner:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    .line 296
    .local v1, "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;->desc:Ljava/lang/String;

    invoke-static {v2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    .line 297
    .local v2, "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto/16 :goto_1

    .line 290
    .end local v0    # "fin":Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;
    .end local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :sswitch_1
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->REFERENCE_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 291
    .restart local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->REFERENCE_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 292
    .restart local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto/16 :goto_1

    .line 275
    .end local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :sswitch_2
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->LONG_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 276
    .restart local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 277
    .restart local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto/16 :goto_1

    .line 285
    .end local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :sswitch_3
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->DOUBLE_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 286
    .restart local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->DOUBLE_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 287
    .restart local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto/16 :goto_1

    .line 257
    .end local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :sswitch_4
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->FLOAT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 258
    .restart local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->FLOAT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 259
    .restart local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto/16 :goto_1

    .line 269
    .end local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :sswitch_5
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->LONG_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 270
    .restart local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->LONG_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 271
    .restart local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto/16 :goto_1

    .line 247
    .end local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :sswitch_6
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 248
    .restart local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 249
    .restart local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto/16 :goto_1

    .line 211
    .end local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :sswitch_7
    const-string v0, "[S"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    .line 212
    .restart local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 213
    .restart local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto/16 :goto_1

    .line 207
    .end local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :sswitch_8
    const-string v0, "[C"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    .line 208
    .restart local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 209
    .restart local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto :goto_1

    .line 199
    .end local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :sswitch_9
    const-string v0, "[Z"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->isSubTypeOf(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    const-string v0, "[B"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    move-object v1, v0

    .local v0, "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto :goto_0

    .line 202
    .end local v0    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :cond_0
    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    move-object v1, v0

    .line 204
    .restart local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :goto_0
    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 205
    .restart local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto :goto_1

    .line 227
    .end local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :sswitch_a
    const-string v0, "[Ljava/lang/Object;"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    .line 228
    .restart local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 229
    .restart local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto :goto_1

    .line 223
    .end local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :sswitch_b
    const-string v0, "[D"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    .line 224
    .restart local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 225
    .restart local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto :goto_1

    .line 219
    .end local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :sswitch_c
    const-string v0, "[F"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    .line 220
    .restart local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 221
    .restart local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto :goto_1

    .line 215
    .end local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :sswitch_d
    const-string v0, "[J"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    .line 216
    .restart local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 217
    .restart local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto :goto_1

    .line 195
    .end local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :sswitch_e
    const-string v0, "[I"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    .line 196
    .restart local v1    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 197
    .restart local v2    # "expected2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    nop

    .line 301
    :goto_1
    invoke-virtual {p0, p2, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->isSubTypeOf(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 303
    invoke-virtual {p0, p3, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->isSubTypeOf(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    const/16 v3, 0x32

    if-ne v0, v3, :cond_1

    .line 307
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->getElementValue(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    return-object v0

    .line 309
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->binaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    return-object v0

    .line 304
    :cond_2
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    const-string v3, "Second argument"

    invoke-direct {v0, v3, v2, p3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    throw v0

    .line 302
    :cond_3
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    const-string v3, "First argument"

    invoke-direct {v0, v3, v1, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_e
        0x2f -> :sswitch_d
        0x30 -> :sswitch_c
        0x31 -> :sswitch_b
        0x32 -> :sswitch_a
        0x33 -> :sswitch_9
        0x34 -> :sswitch_8
        0x35 -> :sswitch_7
        0x60 -> :sswitch_6
        0x61 -> :sswitch_5
        0x62 -> :sswitch_4
        0x63 -> :sswitch_3
        0x64 -> :sswitch_6
        0x65 -> :sswitch_5
        0x66 -> :sswitch_4
        0x67 -> :sswitch_3
        0x68 -> :sswitch_6
        0x69 -> :sswitch_5
        0x6a -> :sswitch_4
        0x6b -> :sswitch_3
        0x6c -> :sswitch_6
        0x6d -> :sswitch_5
        0x6e -> :sswitch_4
        0x6f -> :sswitch_3
        0x70 -> :sswitch_6
        0x71 -> :sswitch_5
        0x72 -> :sswitch_4
        0x73 -> :sswitch_3
        0x78 -> :sswitch_6
        0x79 -> :sswitch_2
        0x7a -> :sswitch_6
        0x7b -> :sswitch_2
        0x7c -> :sswitch_6
        0x7d -> :sswitch_2
        0x7e -> :sswitch_6
        0x7f -> :sswitch_5
        0x80 -> :sswitch_6
        0x81 -> :sswitch_5
        0x82 -> :sswitch_6
        0x83 -> :sswitch_5
        0x94 -> :sswitch_5
        0x95 -> :sswitch_4
        0x96 -> :sswitch_4
        0x97 -> :sswitch_3
        0x98 -> :sswitch_3
        0x9f -> :sswitch_6
        0xa0 -> :sswitch_6
        0xa1 -> :sswitch_6
        0xa2 -> :sswitch_6
        0xa3 -> :sswitch_6
        0xa4 -> :sswitch_6
        0xa5 -> :sswitch_1
        0xa6 -> :sswitch_1
        0xb5 -> :sswitch_0
    .end sparse-switch
.end method

.method public copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 3
    .param p1, "insn"    # Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .param p2, "value"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 86
    return-object p2

    .line 77
    :sswitch_0
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->RETURNADDRESS_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    const-string v2, "an object reference or a return address"

    invoke-direct {v0, v1, v2, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    throw v0

    .line 84
    :cond_1
    :goto_0
    return-object p2

    .line 70
    :sswitch_1
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->isReference()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    return-object p2

    .line 71
    :cond_2
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    const-string v2, "an object reference"

    invoke-direct {v0, v1, v2, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    throw v0

    .line 67
    :sswitch_2
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->DOUBLE_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 68
    .local v0, "expected":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto :goto_1

    .line 59
    .end local v0    # "expected":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :sswitch_3
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->FLOAT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 60
    .restart local v0    # "expected":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto :goto_1

    .line 63
    .end local v0    # "expected":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :sswitch_4
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->LONG_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 64
    .restart local v0    # "expected":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto :goto_1

    .line 55
    .end local v0    # "expected":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :sswitch_5
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 56
    .restart local v0    # "expected":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    nop

    .line 90
    :goto_1
    if-ne p2, v0, :cond_3

    .line 93
    return-object p2

    .line 91
    :cond_3
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    invoke-direct {v2, v1, v0, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_5
        0x16 -> :sswitch_4
        0x17 -> :sswitch_3
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
        0x36 -> :sswitch_5
        0x37 -> :sswitch_4
        0x38 -> :sswitch_3
        0x39 -> :sswitch_2
        0x3a -> :sswitch_0
    .end sparse-switch
.end method

.method protected getElementValue(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 1
    .param p1, "objectArrayValue"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;
        }
    .end annotation

    .line 422
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->REFERENCE_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-object v0
.end method

.method protected isArrayValue(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Z
    .locals 1
    .param p1, "value"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 416
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->isReference()Z

    move-result v0

    return v0
.end method

.method protected isSubTypeOf(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Z
    .locals 1
    .param p1, "value"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .param p2, "expected"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 426
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public naryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Ljava/util/List;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 9
    .param p1, "insn"    # Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .param p2, "values"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;
        }
    .end annotation

    .line 377
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    .line 378
    .local v0, "opcode":I
    const/16 v1, 0xc5

    if-ne v0, v1, :cond_2

    .line 379
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 380
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    if-ne v2, v3, :cond_0

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    :cond_0
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    sget-object v3, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 383
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    throw v2

    .line 379
    .end local v1    # "i":I
    :cond_1
    goto/16 :goto_3

    .line 387
    :cond_2
    const/4 v1, 0x0

    .line 388
    .restart local v1    # "i":I
    const/4 v2, 0x0

    .line 389
    .local v2, "j":I
    const/16 v3, 0xb8

    if-eq v0, v3, :cond_5

    .line 390
    move-object v3, p1

    check-cast v3, Lorg/checkerframework/org/objectweb/asmx/tree/MethodInsnNode;

    iget-object v3, v3, Lorg/checkerframework/org/objectweb/asmx/tree/MethodInsnNode;->owner:Ljava/lang/String;

    .line 391
    .local v3, "own":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-eq v5, v6, :cond_3

    .line 392
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "L"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 394
    :cond_3
    invoke-static {v3}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v5

    .line 395
    .local v5, "owner":Lorg/checkerframework/org/objectweb/asmx/Type;
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "i":I
    .local v6, "i":I
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    invoke-virtual {p0, v5}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v7

    invoke-virtual {p0, v1, v7}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->isSubTypeOf(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v6

    goto :goto_1

    .line 396
    :cond_4
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    .line 397
    invoke-virtual {p0, v5}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v7

    .line 398
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    const-string v8, "Method owner"

    invoke-direct {v1, v8, v7, v4}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    throw v1

    .line 401
    .end local v3    # "own":Ljava/lang/String;
    .end local v5    # "owner":Lorg/checkerframework/org/objectweb/asmx/Type;
    .end local v6    # "i":I
    .restart local v1    # "i":I
    :cond_5
    :goto_1
    move-object v3, p1

    check-cast v3, Lorg/checkerframework/org/objectweb/asmx/tree/MethodInsnNode;

    iget-object v3, v3, Lorg/checkerframework/org/objectweb/asmx/tree/MethodInsnNode;->desc:Ljava/lang/String;

    invoke-static {v3}, Lorg/checkerframework/org/objectweb/asmx/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v3

    .line 402
    .local v3, "args":[Lorg/checkerframework/org/objectweb/asmx/Type;
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 403
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "j":I
    .local v4, "j":I
    aget-object v2, v3, v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    .line 404
    .local v2, "expected":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .local v5, "i":I
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 405
    .local v1, "encountered":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->isSubTypeOf(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 410
    .end local v1    # "encountered":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v2    # "expected":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    move v2, v4

    move v1, v5

    goto :goto_2

    .line 406
    .restart local v1    # "encountered":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .restart local v2    # "expected":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :cond_6
    new-instance v6, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Argument "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    throw v6

    .line 412
    .end local v1    # "encountered":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v2    # "expected":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v3    # "args":[Lorg/checkerframework/org/objectweb/asmx/Type;
    .end local v4    # "j":I
    .end local v5    # "i":I
    :cond_7
    :goto_3
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->naryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Ljava/util/List;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    return-object v1
.end method

.method public ternaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 5
    .param p1, "insn"    # Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .param p2, "value1"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .param p3, "value2"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .param p4, "value3"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;
        }
    .end annotation

    .line 321
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 359
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :pswitch_0
    const-string v0, "[S"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .line 340
    .local v0, "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 341
    .local v1, "expected3":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto :goto_1

    .line 335
    .end local v0    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v1    # "expected3":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :pswitch_1
    const-string v0, "[C"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .line 336
    .restart local v0    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 337
    .restart local v1    # "expected3":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto :goto_1

    .line 327
    .end local v0    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v1    # "expected3":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :pswitch_2
    const-string v0, "[Z"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->isSubTypeOf(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    const-string v0, "[B"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .restart local v0    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto :goto_0

    .line 330
    .end local v0    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :cond_0
    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .line 332
    .restart local v0    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :goto_0
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 333
    .restart local v1    # "expected3":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto :goto_1

    .line 355
    .end local v0    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v1    # "expected3":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :pswitch_3
    move-object v0, p2

    .line 356
    .restart local v0    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->REFERENCE_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 357
    .restart local v1    # "expected3":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto :goto_1

    .line 351
    .end local v0    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v1    # "expected3":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :pswitch_4
    const-string v0, "[D"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .line 352
    .restart local v0    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->DOUBLE_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 353
    .restart local v1    # "expected3":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto :goto_1

    .line 347
    .end local v0    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v1    # "expected3":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :pswitch_5
    const-string v0, "[F"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .line 348
    .restart local v0    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->FLOAT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 349
    .restart local v1    # "expected3":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto :goto_1

    .line 343
    .end local v0    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v1    # "expected3":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :pswitch_6
    const-string v0, "[J"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .line 344
    .restart local v0    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->LONG_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 345
    .restart local v1    # "expected3":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto :goto_1

    .line 323
    .end local v0    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v1    # "expected3":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :pswitch_7
    const-string v0, "[I"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .line 324
    .restart local v0    # "expected1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 325
    .restart local v1    # "expected3":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    nop

    .line 361
    :goto_1
    invoke-virtual {p0, p2, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->isSubTypeOf(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 364
    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    if-ne p3, v2, :cond_2

    .line 368
    invoke-virtual {p0, p4, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->isSubTypeOf(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 371
    const/4 v2, 0x0

    return-object v2

    .line 369
    :cond_1
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    const-string v3, "Third argument"

    invoke-direct {v2, v3, v1, p4}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    throw v2

    .line 365
    :cond_2
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    const-string v3, "Second argument"

    sget-object v4, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    invoke-direct {v2, v3, v4, p3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    throw v2

    .line 362
    :cond_3
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " array reference"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "First argument"

    invoke-direct {v2, v4, v3, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public unaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 3
    .param p1, "insn"    # Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .param p2, "value"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    const-string v1, "an object reference"

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 178
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->unaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    return-object v0

    .line 149
    :cond_0
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    invoke-direct {v0, v2, v1, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    throw v0

    .line 155
    :pswitch_2
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->isArrayValue(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->unaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    return-object v0

    .line 156
    :cond_1
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    const-string v1, "an array reference"

    invoke-direct {v0, v2, v1, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    throw v0

    .line 144
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;

    iget-object v1, v1, Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;->owner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .line 146
    .local v0, "expected":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto :goto_0

    .line 175
    .end local v0    # "expected":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :pswitch_4
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;

    iget-object v0, v0, Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;->desc:Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .line 176
    .restart local v0    # "expected":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto :goto_0

    .line 168
    .end local v0    # "expected":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :pswitch_5
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->isReference()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->unaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    return-object v0

    .line 169
    :cond_2
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    invoke-direct {v0, v2, v1, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    throw v0

    .line 141
    :pswitch_6
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->DOUBLE_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 142
    .restart local v0    # "expected":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto :goto_0

    .line 127
    .end local v0    # "expected":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :pswitch_7
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->FLOAT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 128
    .restart local v0    # "expected":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto :goto_0

    .line 134
    .end local v0    # "expected":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :pswitch_8
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->LONG_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 135
    .restart local v0    # "expected":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    goto :goto_0

    .line 120
    .end local v0    # "expected":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :pswitch_9
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 121
    .restart local v0    # "expected":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    nop

    .line 180
    :goto_0
    invoke-virtual {p0, p2, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicVerifier;->isSubTypeOf(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicInterpreter;->unaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    return-object v1

    .line 181
    :cond_3
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    invoke-direct {v1, v2, v0, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
