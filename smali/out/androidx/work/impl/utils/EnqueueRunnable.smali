.class public Landroidx/work/impl/utils/EnqueueRunnable;
.super Ljava/lang/Object;
.source "EnqueueRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mOperation:Landroidx/work/impl/OperationImpl;

.field private final mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "EnqueueRunnable"

    .line 66
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkContinuationImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "workContinuation"
        }
    .end annotation

    .line 72
    new-instance v0, Landroidx/work/impl/OperationImpl;

    invoke-direct {v0}, Landroidx/work/impl/OperationImpl;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/work/impl/utils/EnqueueRunnable;-><init>(Landroidx/work/impl/WorkContinuationImpl;Landroidx/work/impl/OperationImpl;)V

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkContinuationImpl;Landroidx/work/impl/OperationImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "workContinuation",
            "result"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    .line 79
    iput-object p2, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    return-void
.end method

.method private static enqueueContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "workContinuation"
        }
    .end annotation

    .line 162
    invoke-static {p0}, Landroidx/work/impl/WorkContinuationImpl;->prerequisitesFor(Landroidx/work/impl/WorkContinuationImpl;)Ljava/util/Set;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->getWorkManagerImpl()Landroidx/work/impl/WorkManagerImpl;

    move-result-object v1

    .line 166
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->getWork()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 167
    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->getName()Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->getExistingWorkPolicy()Landroidx/work/ExistingWorkPolicy;

    move-result-object v4

    .line 164
    invoke-static {v1, v2, v0, v3, v4}, Landroidx/work/impl/utils/EnqueueRunnable;->enqueueWorkWithPrerequisites(Landroidx/work/impl/WorkManagerImpl;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;)Z

    move-result v0

    .line 171
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->markEnqueued()V

    return v0
.end method

.method private static enqueueWorkWithPrerequisites(Landroidx/work/impl/WorkManagerImpl;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;)Z
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "workManagerImpl",
            "workList",
            "prerequisiteIds",
            "name",
            "existingWorkPolicy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/WorkManagerImpl;",
            "Ljava/util/List<",
            "+",
            "Landroidx/work/WorkRequest;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/work/ExistingWorkPolicy;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 190
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_17

    .line 192
    array-length v8, v0

    if-lez v8, :cond_17

    move v8, v6

    goto :goto_18

    :cond_17
    move v8, v7

    :goto_18
    if-eqz v8, :cond_64

    .line 201
    array-length v9, v0

    move v11, v6

    move v10, v7

    move v12, v10

    move v13, v12

    :goto_1f
    if-ge v10, v9, :cond_67

    aget-object v14, v0, v10

    .line 202
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v15

    invoke-interface {v15, v14}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v15

    if-nez v15, :cond_4c

    .line 204
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Prerequisite "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t exist; not enqueuing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    .line 208
    :cond_4c
    iget-object v14, v15, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 209
    sget-object v15, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    if-ne v14, v15, :cond_54

    move v15, v6

    goto :goto_55

    :cond_54
    move v15, v7

    :goto_55
    and-int/2addr v11, v15

    .line 210
    sget-object v15, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    if-ne v14, v15, :cond_5c

    move v13, v6

    goto :goto_61

    .line 212
    :cond_5c
    sget-object v15, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    if-ne v14, v15, :cond_61

    move v12, v6

    :cond_61
    :goto_61
    add-int/lit8 v10, v10, 0x1

    goto :goto_1f

    :cond_64
    move v11, v6

    move v12, v7

    move v13, v12

    .line 218
    :cond_67
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/2addr v9, v6

    if-eqz v9, :cond_72

    if-nez v8, :cond_72

    move v10, v6

    goto :goto_73

    :cond_72
    move v10, v7

    :goto_73
    if-eqz v10, :cond_154

    .line 226
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v10

    invoke-interface {v10, v1}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 228
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_154

    .line 230
    sget-object v14, Landroidx/work/ExistingWorkPolicy;->APPEND:Landroidx/work/ExistingWorkPolicy;

    if-eq v2, v14, :cond_d6

    sget-object v14, Landroidx/work/ExistingWorkPolicy;->APPEND_OR_REPLACE:Landroidx/work/ExistingWorkPolicy;

    if-ne v2, v14, :cond_8c

    goto :goto_d6

    .line 264
    :cond_8c
    sget-object v14, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    if-ne v2, v14, :cond_b0

    .line 265
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_94
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 266
    iget-object v15, v14, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    sget-object v6, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-eq v15, v6, :cond_af

    iget-object v6, v14, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    sget-object v14, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    if-ne v6, v14, :cond_ad

    goto :goto_af

    :cond_ad
    const/4 v6, 0x1

    goto :goto_94

    :cond_af
    :goto_af
    return v7

    :cond_b0
    move-object/from16 v6, p0

    .line 277
    invoke-static {v1, v6, v7}, Landroidx/work/impl/utils/CancelWorkRunnable;->forName(Ljava/lang/String;Landroidx/work/impl/WorkManagerImpl;Z)Landroidx/work/impl/utils/CancelWorkRunnable;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/work/impl/utils/CancelWorkRunnable;->run()V

    .line 284
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v2

    .line 285
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_c1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 286
    iget-object v14, v14, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-interface {v2, v14}, Landroidx/work/impl/model/WorkSpecDao;->delete(Ljava/lang/String;)V

    goto :goto_c1

    :cond_d3
    const/4 v2, 0x1

    goto/16 :goto_155

    :cond_d6
    :goto_d6
    move-object/from16 v6, p0

    .line 231
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao;

    move-result-object v8

    .line 232
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 233
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_e5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_11c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 234
    iget-object v7, v15, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-interface {v8, v7}, Landroidx/work/impl/model/DependencyDao;->hasDependents(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_118

    .line 235
    iget-object v7, v15, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    sget-object v6, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    if-ne v7, v6, :cond_101

    const/4 v6, 0x1

    goto :goto_102

    :cond_101
    const/4 v6, 0x0

    :goto_102
    and-int/2addr v6, v11

    .line 236
    iget-object v7, v15, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    sget-object v11, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    if-ne v7, v11, :cond_10b

    const/4 v13, 0x1

    goto :goto_112

    .line 238
    :cond_10b
    iget-object v7, v15, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    sget-object v11, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    if-ne v7, v11, :cond_112

    const/4 v12, 0x1

    .line 241
    :cond_112
    :goto_112
    iget-object v7, v15, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v11, v6

    :cond_118
    move-object/from16 v6, p0

    const/4 v7, 0x0

    goto :goto_e5

    .line 244
    :cond_11c
    sget-object v6, Landroidx/work/ExistingWorkPolicy;->APPEND_OR_REPLACE:Landroidx/work/ExistingWorkPolicy;

    if-ne v2, v6, :cond_148

    if-nez v12, :cond_124

    if-eqz v13, :cond_148

    .line 247
    :cond_124
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v2

    .line 249
    invoke-interface {v2, v1}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 250
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_130
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_142

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 251
    iget-object v7, v7, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-interface {v2, v7}, Landroidx/work/impl/model/WorkSpecDao;->delete(Ljava/lang/String;)V

    goto :goto_130

    .line 254
    :cond_142
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 259
    :cond_148
    invoke-interface {v14, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 260
    array-length v2, v0

    if-lez v2, :cond_153

    const/4 v8, 0x1

    goto :goto_154

    :cond_153
    const/4 v8, 0x0

    :cond_154
    :goto_154
    const/4 v2, 0x0

    .line 292
    :goto_155
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_159
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/work/WorkRequest;

    .line 293
    invoke-virtual {v7}, Landroidx/work/WorkRequest;->getWorkSpec()Landroidx/work/impl/model/WorkSpec;

    move-result-object v10

    if-eqz v8, :cond_180

    if-nez v11, :cond_180

    if-eqz v13, :cond_174

    .line 297
    sget-object v14, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    iput-object v14, v10, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    goto :goto_182

    :cond_174
    if-eqz v12, :cond_17b

    .line 299
    sget-object v14, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    iput-object v14, v10, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    goto :goto_182

    .line 301
    :cond_17b
    sget-object v14, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    iput-object v14, v10, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    goto :goto_182

    .line 307
    :cond_180
    iput-wide v3, v10, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    .line 311
    :goto_182
    iget-object v14, v10, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    sget-object v15, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-ne v14, v15, :cond_189

    const/4 v2, 0x1

    .line 315
    :cond_189
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v14

    .line 317
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkManagerImpl;->getSchedulers()Ljava/util/List;

    move-result-object v15

    .line 316
    invoke-static {v15, v10}, Landroidx/work/impl/utils/EnqueueUtilsKt;->wrapInConstraintTrackingWorkerIfNeeded(Ljava/util/List;Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v10

    .line 315
    invoke-interface {v14, v10}, Landroidx/work/impl/model/WorkSpecDao;->insertWorkSpec(Landroidx/work/impl/model/WorkSpec;)V

    if-eqz v8, :cond_1bb

    .line 323
    array-length v10, v0

    const/4 v14, 0x0

    :goto_19c
    if-ge v14, v10, :cond_1bb

    aget-object v15, v0, v14

    move-object/from16 p2, v0

    .line 324
    new-instance v0, Landroidx/work/impl/model/Dependency;

    move/from16 p1, v2

    invoke-virtual {v7}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v15}, Landroidx/work/impl/model/Dependency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao;

    move-result-object v2

    invoke-interface {v2, v0}, Landroidx/work/impl/model/DependencyDao;->insertDependency(Landroidx/work/impl/model/Dependency;)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v2, p1

    move-object/from16 v0, p2

    goto :goto_19c

    :cond_1bb
    move-object/from16 p2, v0

    move/from16 p1, v2

    .line 329
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->workTagDao()Landroidx/work/impl/model/WorkTagDao;

    move-result-object v0

    invoke-virtual {v7}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Landroidx/work/WorkRequest;->getTags()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v0, v2, v10}, Landroidx/work/impl/model/WorkTagDao;->insertTags(Ljava/lang/String;Ljava/util/Set;)V

    if-eqz v9, :cond_1e0

    .line 331
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->workNameDao()Landroidx/work/impl/model/WorkNameDao;

    move-result-object v0

    new-instance v2, Landroidx/work/impl/model/WorkName;

    invoke-virtual {v7}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v1, v7}, Landroidx/work/impl/model/WorkName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Landroidx/work/impl/model/WorkNameDao;->insert(Landroidx/work/impl/model/WorkName;)V

    :cond_1e0
    move/from16 v2, p1

    move-object/from16 v0, p2

    goto/16 :goto_159

    :cond_1e6
    return v2
.end method

.method private static processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "workContinuation"
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->getParents()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    .line 145
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/impl/WorkContinuationImpl;

    .line 148
    invoke-virtual {v2}, Landroidx/work/impl/WorkContinuationImpl;->isEnqueued()Z

    move-result v3

    if-nez v3, :cond_23

    .line 149
    invoke-static {v2}, Landroidx/work/impl/utils/EnqueueRunnable;->processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_b

    .line 151
    :cond_23
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v3

    sget-object v4, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Already enqueued work ids ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ", "

    .line 153
    invoke-virtual {v2}, Landroidx/work/impl/WorkContinuationImpl;->getIds()Ljava/util/List;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {v3, v4, v2}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 157
    :cond_4c
    invoke-static {p0}, Landroidx/work/impl/utils/EnqueueRunnable;->enqueueContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z

    move-result p0

    or-int/2addr p0, v1

    return p0
.end method


# virtual methods
.method public addToDatabase()Z
    .registers 3

    .line 117
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkContinuationImpl;->getWorkManagerImpl()Landroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 121
    :try_start_d
    iget-object v1, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    invoke-static {v1}, Landroidx/work/impl/utils/EnqueueRunnable;->processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z

    move-result v1

    .line 122
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    .line 125
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    return v1

    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 126
    throw v1
.end method

.method public getOperation()Landroidx/work/Operation;
    .registers 2

    .line 108
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    return-object v0
.end method

.method public run()V
    .registers 4

    const-string v0, "WorkContinuation has cycles ("

    .line 85
    :try_start_2
    iget-object v1, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    invoke-virtual {v1}, Landroidx/work/impl/WorkContinuationImpl;->hasCycles()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 89
    invoke-virtual {p0}, Landroidx/work/impl/utils/EnqueueRunnable;->addToDatabase()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 92
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    .line 93
    invoke-virtual {v0}, Landroidx/work/impl/WorkContinuationImpl;->getWorkManagerImpl()Landroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    const-class v1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 95
    invoke-virtual {p0}, Landroidx/work/impl/utils/EnqueueRunnable;->scheduleWorkInBackground()V

    .line 97
    :cond_23
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    sget-object v1, Landroidx/work/Operation;->SUCCESS:Landroidx/work/Operation$State$SUCCESS;

    invoke-virtual {v0, v1}, Landroidx/work/impl/OperationImpl;->markState(Landroidx/work/Operation$State;)V

    goto :goto_51

    .line 86
    :cond_2b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_46
    .catchall {:try_start_2 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception v0

    .line 99
    iget-object v1, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    new-instance v2, Landroidx/work/Operation$State$FAILURE;

    invoke-direct {v2, v0}, Landroidx/work/Operation$State$FAILURE;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroidx/work/impl/OperationImpl;->markState(Landroidx/work/Operation$State;)V

    :goto_51
    return-void
.end method

.method public scheduleWorkInBackground()V
    .registers 4

    .line 134
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkContinuationImpl;->getWorkManagerImpl()Landroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getConfiguration()Landroidx/work/Configuration;

    move-result-object v1

    .line 137
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v2

    .line 138
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getSchedulers()Ljava/util/List;

    move-result-object v0

    .line 135
    invoke-static {v1, v2, v0}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method
