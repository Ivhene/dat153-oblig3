.class public Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;
.super Ljava/lang/Object;
.source "InstructionFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/bcel/util/InstructionFinder$CodeConstraint;
    }
.end annotation


# static fields
.field private static final NO_OPCODES:I = 0x100

.field private static final OFFSET:I = 0x7fff

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private handles:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

.field private final il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

.field private il_string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->map:Ljava/util/Map;

    .line 312
    const-string v1, "arithmeticinstruction"

    const-string v2, "(irem|lrem|iand|ior|ineg|isub|lneg|fneg|fmul|ldiv|fadd|lxor|frem|idiv|land|ixor|ishr|fsub|lshl|fdiv|iadd|lor|dmul|lsub|ishl|imul|lmul|lushr|dneg|iushr|lshr|ddiv|drem|dadd|ladd|dsub)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v1, "invokeinstruction"

    const-string v2, "(invokevirtual|invokeinterface|invokestatic|invokespecial|invokedynamic)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v1, "arrayinstruction"

    const-string v2, "(baload|aastore|saload|caload|fastore|lastore|iaload|castore|iastore|aaload|bastore|sastore|faload|laload|daload|dastore)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v1, "gotoinstruction"

    const-string v2, "(goto|goto_w)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string v1, "conversioninstruction"

    const-string v2, "(d2l|l2d|i2s|d2i|l2i|i2b|l2f|d2f|f2i|i2d|i2l|f2d|i2c|f2l|i2f)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v1, "localvariableinstruction"

    const-string v2, "(fstore|iinc|lload|dstore|dload|iload|aload|astore|istore|fload|lstore)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v1, "loadinstruction"

    const-string v2, "(fload|dload|lload|iload|aload)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v1, "fieldinstruction"

    const-string v2, "(getfield|putstatic|getstatic|putfield)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v1, "cpinstruction"

    const-string v2, "(ldc2_w|invokeinterface|invokedynamic|multianewarray|putstatic|instanceof|getstatic|checkcast|getfield|invokespecial|ldc_w|invokestatic|invokevirtual|putfield|ldc|new|anewarray)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v1, "stackinstruction"

    const-string v2, "(dup2|swap|dup2_x2|pop|pop2|dup|dup2_x1|dup_x2|dup_x1)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v1, "branchinstruction"

    const-string v2, "(ifle|if_acmpne|if_icmpeq|if_acmpeq|ifnonnull|goto_w|iflt|ifnull|if_icmpne|tableswitch|if_icmple|ifeq|if_icmplt|jsr_w|if_icmpgt|ifgt|jsr|goto|ifne|ifge|lookupswitch|if_icmpge)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v1, "returninstruction"

    const-string v3, "(lreturn|ireturn|freturn|dreturn|areturn|return)"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v1, "storeinstruction"

    const-string v3, "(istore|fstore|dstore|astore|lstore)"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v1, "select"

    const-string v3, "(tableswitch|lookupswitch)"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v1, "ifinstruction"

    const-string v3, "(ifeq|ifgt|if_icmpne|if_icmpeq|ifge|ifnull|ifne|if_icmple|if_icmpge|if_acmpeq|if_icmplt|if_acmpne|ifnonnull|iflt|if_icmpgt|ifle)"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v1, "jsrinstruction"

    const-string v3, "(jsr|jsr_w)"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v1, "variablelengthinstruction"

    const-string v3, "(tableswitch|jsr|goto|lookupswitch)"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v1, "unconditionalbranch"

    const-string v3, "(goto|jsr|jsr_w|athrow|goto_w)"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v1, "constantpushinstruction"

    const-string v3, "(dconst|bipush|sipush|fconst|iconst|lconst)"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v1, "typedinstruction"

    const-string v3, "(imul|lsub|aload|fload|lor|new|aaload|fcmpg|iand|iaload|lrem|idiv|d2l|isub|dcmpg|dastore|ret|f2d|f2i|drem|iinc|i2c|checkcast|frem|lreturn|astore|lushr|daload|dneg|fastore|istore|lshl|ldiv|lstore|areturn|ishr|ldc_w|invokeinterface|invokedynamic|aastore|lxor|ishl|l2d|i2f|return|faload|sipush|iushr|caload|instanceof|invokespecial|putfield|fmul|ireturn|laload|d2f|lneg|ixor|i2l|fdiv|lastore|multianewarray|i2b|getstatic|i2d|putstatic|fcmpl|saload|ladd|irem|dload|jsr_w|dconst|dcmpl|fsub|freturn|ldc|aconst_null|castore|lmul|ldc2_w|dadd|iconst|f2l|ddiv|dstore|land|jsr|anewarray|dmul|bipush|dsub|sastore|d2i|i2s|lshr|iadd|l2i|lload|bastore|fstore|fneg|iload|fadd|baload|fconst|ior|ineg|dreturn|l2f|lconst|getfield|invokevirtual|invokestatic|iastore)"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v1, "popinstruction"

    const-string v3, "(fstore|dstore|pop|pop2|astore|putstatic|istore|lstore)"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v1, "allocationinstruction"

    const-string v3, "(multianewarray|new|anewarray|newarray)"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v1, "indexedinstruction"

    const-string v3, "(lload|lstore|fload|ldc2_w|invokeinterface|invokedynamic|multianewarray|astore|dload|putstatic|instanceof|getstatic|checkcast|getfield|invokespecial|dstore|istore|iinc|ldc_w|ret|fstore|invokestatic|iload|putfield|invokevirtual|ldc|new|aload|anewarray)"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v1, "pushinstruction"

    const-string v3, "(dup|lload|dup2|bipush|fload|ldc2_w|sipush|lconst|fconst|dload|getstatic|ldc_w|aconst_null|dconst|iload|ldc|iconst|aload)"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v1, "stackproducer"

    const-string v3, "(imul|lsub|aload|fload|lor|new|aaload|fcmpg|iand|iaload|lrem|idiv|d2l|isub|dcmpg|dup|f2d|f2i|drem|i2c|checkcast|frem|lushr|daload|dneg|lshl|ldiv|ishr|ldc_w|invokeinterface|invokedynamic|lxor|ishl|l2d|i2f|faload|sipush|iushr|caload|instanceof|invokespecial|fmul|laload|d2f|lneg|ixor|i2l|fdiv|getstatic|i2b|swap|i2d|dup2|fcmpl|saload|ladd|irem|dload|jsr_w|dconst|dcmpl|fsub|ldc|arraylength|aconst_null|tableswitch|lmul|ldc2_w|iconst|dadd|f2l|ddiv|land|jsr|anewarray|dmul|bipush|dsub|d2i|newarray|i2s|lshr|iadd|lload|l2i|fneg|iload|fadd|baload|fconst|lookupswitch|ior|ineg|lconst|l2f|getfield|invokevirtual|invokestatic)"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v1, "stackconsumer"

    const-string v3, "(imul|lsub|lor|iflt|fcmpg|if_icmpgt|iand|ifeq|if_icmplt|lrem|ifnonnull|idiv|d2l|isub|dcmpg|dastore|if_icmpeq|f2d|f2i|drem|i2c|checkcast|frem|lreturn|astore|lushr|pop2|monitorexit|dneg|fastore|istore|lshl|ldiv|lstore|areturn|if_icmpge|ishr|monitorenter|invokeinterface|invokedynamic|aastore|lxor|ishl|l2d|i2f|return|iushr|instanceof|invokespecial|fmul|ireturn|d2f|lneg|ixor|pop|i2l|ifnull|fdiv|lastore|i2b|if_acmpeq|ifge|swap|i2d|putstatic|fcmpl|ladd|irem|dcmpl|fsub|freturn|ifgt|castore|lmul|dadd|f2l|ddiv|dstore|land|if_icmpne|if_acmpne|dmul|dsub|sastore|ifle|d2i|i2s|lshr|iadd|l2i|bastore|fstore|fneg|fadd|ior|ineg|ifne|dreturn|l2f|if_icmple|getfield|invokevirtual|invokestatic|iastore)"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v1, "exceptionthrower"

    const-string v3, "(irem|lrem|laload|putstatic|baload|dastore|areturn|getstatic|ldiv|anewarray|iastore|castore|idiv|saload|lastore|fastore|putfield|lreturn|caload|getfield|return|aastore|freturn|newarray|instanceof|multianewarray|athrow|faload|iaload|aaload|dreturn|monitorenter|checkcast|bastore|arraylength|new|invokevirtual|sastore|ldc_w|ireturn|invokespecial|monitorexit|invokeinterface|invokedynamic|ldc|invokestatic|daload)"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v1, "loadclass"

    const-string v3, "(multianewarray|invokeinterface|invokedynamic|instanceof|invokespecial|putfield|checkcast|putstatic|invokevirtual|new|getstatic|invokestatic|getfield|anewarray)"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v1, "instructiontargeter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v1, "if_icmp"

    const-string v2, "(if_icmpne|if_icmpeq|if_icmple|if_icmpge|if_icmplt|if_icmpgt)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v1, "if_acmp"

    const-string v2, "(if_acmpeq|if_acmpne)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v1, "if"

    const-string v2, "(ifeq|ifne|iflt|ifge|ifgt|ifle)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const/4 v1, 0x3

    const/16 v2, 0x8

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->precompile(SSS)Ljava/lang/String;

    move-result-object v2

    const-string v4, "iconst"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    new-instance v2, Ljava/lang/String;

    const/4 v4, 0x5

    new-array v5, v4, [C

    const/4 v6, 0x0

    const/16 v7, 0x28

    aput-char v7, v5, v6

    const/16 v8, 0x9

    invoke-static {v8}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->makeChar(S)C

    move-result v8

    const/4 v9, 0x1

    aput-char v8, v5, v9

    const/16 v8, 0x7c

    aput-char v8, v5, v3

    const/16 v10, 0xa

    invoke-static {v10}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->makeChar(S)C

    move-result v10

    aput-char v10, v5, v1

    const/4 v10, 0x4

    const/16 v11, 0x29

    aput-char v11, v5, v10

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([C)V

    const-string v5, "lconst"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    new-instance v2, Ljava/lang/String;

    new-array v5, v4, [C

    aput-char v7, v5, v6

    const/16 v12, 0xe

    invoke-static {v12}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->makeChar(S)C

    move-result v12

    aput-char v12, v5, v9

    aput-char v8, v5, v3

    const/16 v12, 0xf

    invoke-static {v12}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->makeChar(S)C

    move-result v12

    aput-char v12, v5, v1

    aput-char v11, v5, v10

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([C)V

    const-string v5, "dconst"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    new-instance v2, Ljava/lang/String;

    const/4 v5, 0x7

    new-array v5, v5, [C

    aput-char v7, v5, v6

    const/16 v6, 0xb

    invoke-static {v6}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->makeChar(S)C

    move-result v6

    aput-char v6, v5, v9

    aput-char v8, v5, v3

    const/16 v3, 0xc

    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->makeChar(S)C

    move-result v3

    aput-char v3, v5, v1

    aput-char v8, v5, v10

    const/16 v1, 0xd

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->makeChar(S)C

    move-result v1

    aput-char v1, v5, v4

    const/4 v1, 0x6

    aput-char v11, v5, v1

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([C)V

    const-string v1, "fconst"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const/16 v1, 0x21

    const/16 v2, 0x16

    const/16 v3, 0x1e

    invoke-static {v3, v1, v2}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->precompile(SSS)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lload"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const/16 v1, 0x1d

    const/16 v2, 0x15

    const/16 v3, 0x1a

    invoke-static {v3, v1, v2}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->precompile(SSS)Ljava/lang/String;

    move-result-object v1

    const-string v2, "iload"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const/16 v1, 0x26

    const/16 v2, 0x18

    invoke-static {v1, v11, v2}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->precompile(SSS)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dload"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const/16 v1, 0x25

    const/16 v2, 0x17

    const/16 v3, 0x22

    invoke-static {v3, v1, v2}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->precompile(SSS)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fload"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const/16 v1, 0x2d

    const/16 v2, 0x19

    const/16 v3, 0x2a

    invoke-static {v3, v1, v2}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->precompile(SSS)Ljava/lang/String;

    move-result-object v1

    const-string v2, "aload"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const/16 v1, 0x42

    const/16 v2, 0x37

    const/16 v3, 0x3f

    invoke-static {v3, v1, v2}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->precompile(SSS)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lstore"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const/16 v1, 0x3e

    const/16 v2, 0x36

    const/16 v3, 0x3b

    invoke-static {v3, v1, v2}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->precompile(SSS)Ljava/lang/String;

    move-result-object v1

    const-string v2, "istore"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const/16 v1, 0x4a

    const/16 v2, 0x39

    const/16 v3, 0x47

    invoke-static {v3, v1, v2}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->precompile(SSS)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dstore"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const/16 v1, 0x46

    const/16 v2, 0x38

    const/16 v3, 0x43

    invoke-static {v3, v1, v2}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->precompile(SSS)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fstore"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const/16 v1, 0x4e

    const/16 v2, 0x3a

    const/16 v3, 0x4b

    invoke-static {v3, v1, v2}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->precompile(SSS)Ljava/lang/String;

    move-result-object v1

    const-string v2, "astore"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 362
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 363
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 364
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 365
    .local v4, "ch":C
    const/16 v5, 0x7fff

    if-ge v4, v5, :cond_0

    .line 366
    sget-object v5, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->map:Ljava/util/Map;

    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->compilePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "ch":C
    :cond_0
    goto :goto_0

    .line 370
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":S
    :goto_1
    const/16 v2, 0x100

    if-ge v1, v2, :cond_3

    .line 372
    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/Const;->getNoOfOperands(I)S

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 373
    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->makeChar(S)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 374
    const/16 v2, 0xff

    if-ge v1, v2, :cond_2

    .line 375
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    :cond_2
    add-int/lit8 v2, v1, 0x1

    int-to-short v1, v2

    goto :goto_1

    .line 379
    .end local v1    # "i":S
    :cond_3
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 380
    sget-object v1, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->map:Ljava/util/Map;

    const-string v2, "instruction"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)V
    .locals 0
    .param p1, "il"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    .line 84
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->reread()V

    .line 85
    return-void
.end method

.method private static compilePattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "pattern"    # Ljava/lang/String;

    .line 136
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "lower":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v1, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 139
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 141
    .local v4, "ch":C
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v5, "name":Ljava/lang/StringBuilder;
    :goto_1
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v6, 0x5f

    if-ne v4, v6, :cond_1

    :cond_0
    if-ge v3, v2, :cond_1

    .line 144
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v2, :cond_1

    .line 146
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_1

    .line 151
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 152
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->mapName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .end local v5    # "name":Ljava/lang/StringBuilder;
    :cond_2
    goto :goto_2

    :cond_3
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 154
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    .end local v4    # "ch":C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getMatch(II)[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 3
    .param p1, "matched_from"    # I
    .param p2, "match_length"    # I

    .line 165
    new-array v0, p2, [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 166
    .local v0, "match":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->handles:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    return-object v0
.end method

.method private static makeChar(S)C
    .locals 1
    .param p0, "opcode"    # S

    .line 283
    add-int/lit16 v0, p0, 0x7fff

    int-to-char v0, v0

    return v0
.end method

.method private static mapName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "pattern"    # Ljava/lang/String;

    .line 112
    sget-object v0, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 114
    return-object v0

    .line 116
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":S
    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_2

    .line 117
    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/Const;->getOpcodeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->makeChar(S)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 116
    :cond_1
    add-int/lit8 v2, v1, 0x1

    int-to-short v1, v2

    goto :goto_0

    .line 121
    .end local v1    # "i":S
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instruction unknown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static precompile(SSS)Ljava/lang/String;
    .locals 3
    .param p0, "from"    # S
    .param p1, "to"    # S
    .param p2, "extra"    # S

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    .local v0, "buf":Ljava/lang/StringBuilder;
    move v1, p0

    .local v1, "i":S
    :goto_0
    if-gt v1, p1, :cond_0

    .line 387
    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->makeChar(S)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 388
    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 386
    add-int/lit8 v2, v1, 0x1

    int-to-short v1, v2

    goto :goto_0

    .line 390
    .end local v1    # "i":S
    :cond_0
    invoke-static {p2}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->makeChar(S)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    return-object v0
.end method

.method public final reread()V
    .locals 4

    .line 93
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getLength()I

    move-result v0

    .line 94
    .local v0, "size":I
    new-array v1, v0, [C

    .line 95
    .local v1, "buf":[C
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getInstructionHandles()[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->handles:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 97
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 98
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->handles:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getOpcode()S

    move-result v3

    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->makeChar(S)C

    move-result v3

    aput-char v3, v1, v2

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v2, p0, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->il_string:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public final search(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "[",
            "Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->search(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/util/InstructionFinder$CodeConstraint;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final search(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Ljava/util/Iterator;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "from"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;",
            ")",
            "Ljava/util/Iterator<",
            "[",
            "Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;",
            ">;"
        }
    .end annotation

    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->search(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/util/InstructionFinder$CodeConstraint;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final search(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/util/InstructionFinder$CodeConstraint;)Ljava/util/Iterator;
    .locals 10
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "from"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p3, "constraint"    # Lorg/checkerframework/org/apache/bcel/util/InstructionFinder$CodeConstraint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;",
            "Lorg/checkerframework/org/apache/bcel/util/InstructionFinder$CodeConstraint;",
            ")",
            "Ljava/util/Iterator<",
            "[",
            "Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;",
            ">;"
        }
    .end annotation

    .line 207
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->compilePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "search":Ljava/lang/String;
    const/4 v1, -0x1

    .line 209
    .local v1, "start":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->handles:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 210
    aget-object v3, v3, v2

    if-ne v3, p2, :cond_0

    .line 211
    move v1, v2

    .line 212
    goto :goto_1

    .line 209
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    .end local v2    # "i":I
    :cond_1
    :goto_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 219
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 220
    .local v2, "regex":Ljava/util/regex/Pattern;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v3, "matches":Ljava/util/List;, "Ljava/util/List<[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;>;"
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->il_string:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 222
    .local v4, "matcher":Ljava/util/regex/Matcher;
    :goto_2
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->il_string:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 223
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    .line 224
    .local v5, "startExpr":I
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    .line 225
    .local v6, "endExpr":I
    sub-int v7, v6, v5

    .line 226
    .local v7, "lenExpr":I
    invoke-direct {p0, v5, v7}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->getMatch(II)[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v8

    .line 227
    .local v8, "match":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    if-eqz p3, :cond_2

    invoke-interface {p3, v8}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder$CodeConstraint;->checkCode([Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 228
    :cond_2
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_3
    move v1, v6

    .line 231
    .end local v5    # "startExpr":I
    .end local v6    # "endExpr":I
    .end local v7    # "lenExpr":I
    .end local v8    # "match":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    goto :goto_2

    .line 232
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    return-object v5

    .line 216
    .end local v2    # "regex":Ljava/util/regex/Pattern;
    .end local v3    # "matches":Ljava/util/List;, "Ljava/util/List<[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;>;"
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_5
    new-instance v2, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instruction handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found in instruction list."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final search(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/util/InstructionFinder$CodeConstraint;)Ljava/util/Iterator;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "constraint"    # Lorg/checkerframework/org/apache/bcel/util/InstructionFinder$CodeConstraint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/checkerframework/org/apache/bcel/util/InstructionFinder$CodeConstraint;",
            ")",
            "Ljava/util/Iterator<",
            "[",
            "Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->il:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/checkerframework/org/apache/bcel/util/InstructionFinder;->search(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/util/InstructionFinder$CodeConstraint;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
